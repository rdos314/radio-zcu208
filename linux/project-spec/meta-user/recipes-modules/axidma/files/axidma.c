/*  axidma.c - The simplest kernel module.

* Copyright (C) 2013-2022 Xilinx, Inc
* Copyright (c) 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
*
*   This program is free software; you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation; either version 2 of the License, or
*   (at your option) any later version.

*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License along
*   with this program. If not, see <http://www.gnu.org/licenses/>.

*/

#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/interrupt.h>
#include <linux/fs.h>
#include <linux/poll.h>
#include <linux/cdev.h>
#include <linux/mm.h>
#include <linux/of_address.h>

/* Standard module information, edit as appropriate */
MODULE_AUTHOR
    ("Leif Ekblad");
MODULE_DESCRIPTION
    ("axidma");

#define DEVICE_NAME "axidma"

struct ipi_data
{
    wait_queue_head_t wait_q;
    bool event_received;
    dev_t dev_num;
    struct cdev cdev;
    struct class *class;
    phys_addr_t data_phys;
    size_t data_size;
    phys_addr_t ptr_phys;
    size_t ptr_size;
    int irq;
};

static irqreturn_t axidma_irq_handler(int irq, void *dev_id)
{
    struct ipi_data *priv = dev_id;
    priv->event_received = true;
    wake_up_interruptible(&priv->wait_q);
    return IRQ_HANDLED;
}

static int dev_open(struct inode *inode, struct file *file)
{
    file->private_data = container_of(inode->i_cdev, struct ipi_data, cdev);
    return 0;
}

static __poll_t dev_poll(struct file *file, poll_table *wait)
{
    struct ipi_data *priv = file->private_data;
    __poll_t mask = 0;

    poll_wait(file, &priv->wait_q, wait);

    if (priv->event_received) {
        mask |= EPOLLIN | EPOLLRDNORM;
        priv->event_received = false; // Reset for next event
    }
    return mask;
}

// Implement mmap to map physical memory to userspace
static int dev_mmap(struct file *file, struct vm_area_struct *vma)
{
    struct ipi_data *priv = file->private_data;
    size_t size = vma->vm_end - vma->vm_start;
    phys_addr_t phys;

    // Use offset to distinguish which buffer is being mapped
    // offset 0 = Data Buffer, offset > 0 = Pointers Buffer
    if (vma->vm_pgoff == 0)
    {
        if (size > priv->data_size) return -EINVAL;
        phys = priv->data_phys;
        // Write-through/Write-combine for high-speed data
        vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
    }
    else
    {
        if (size > priv->ptr_size) return -EINVAL;
        phys = priv->ptr_phys;
        // Strictly non-cacheable for pointers
        vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
    }

    if (remap_pfn_range(vma, vma->vm_start, phys >> PAGE_SHIFT, size, vma->vm_page_prot))
        return -EAGAIN;
    else
        return 0;
}

static const struct file_operations fops =
{
    .owner = THIS_MODULE,
    .open = dev_open,
    .poll = dev_poll,
    .mmap = dev_mmap,
};

static int ipi_probe(struct platform_device *pdev)
{
    struct ipi_data *priv;
    struct resource res;
    struct device_node *mem_node;
    int i;
    int ret;

    priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
    if (!priv) return -ENOMEM;

    init_waitqueue_head(&priv->wait_q);
    platform_set_drvdata(pdev, priv);

    // Get IRQ (The first interrupt defined in DT)
    priv->irq = platform_get_irq(pdev, 0);
    if (priv->irq < 0) return priv->irq;

    ret = devm_request_irq(&pdev->dev, priv->irq, axidma_irq_handler, 0, DEVICE_NAME, priv);
    if (ret) return ret;

    // Register Char Device
    alloc_chrdev_region(&priv->dev_num, 0, 1, DEVICE_NAME);
    cdev_init(&priv->cdev, &fops);
    cdev_add(&priv->cdev, priv->dev_num, 1);
    priv->class = class_create(DEVICE_NAME);
    device_create(priv->class, NULL, priv->dev_num, NULL, DEVICE_NAME);

    // Loop to get both memory regions
    for (i = 0; i < 2; i++)
    {
        mem_node = of_parse_phandle(pdev->dev.of_node, "memory-region", i);
        if (!mem_node)
        {
            dev_err(&pdev->dev, "Memory-region not found in DT %d\n", i);
            return -ENODEV;
        }

        if (of_address_to_resource(mem_node, 0, &res) == 0)
        {
            switch (i)
            {
                case 0:
                    priv->data_phys = res.start;
                    priv->data_size = resource_size(&res);
                    break;

                case 1:
                    priv->ptr_phys = res.start;
                    priv->ptr_size = resource_size(&res);
                    break;
            }
            of_node_put(mem_node);
        }
        else
        {
            of_node_put(mem_node);
            dev_err(&pdev->dev, "Address not found %d\n", i);
            return -EINVAL;
        }

    }

    return 0;
}

static void ipi_remove(struct platform_device *pdev)
{
    struct ipi_data *priv = platform_get_drvdata(pdev);
    device_destroy(priv->class, priv->dev_num);
    class_destroy(priv->class);
    cdev_del(&priv->cdev);
    unregister_chrdev_region(priv->dev_num, 1);
}

static const struct of_device_id ipi_of_match[] =
{
    { .compatible = "my,axidma", },
    { /* sentinel */ }
};
MODULE_DEVICE_TABLE(of, ipi_of_match);

static struct platform_driver ipi_driver =
{
    .probe = ipi_probe,
    .remove = ipi_remove,
    .driver = { .name = "axidma", .of_match_table = ipi_of_match },
};
module_platform_driver(ipi_driver);
MODULE_LICENSE("GPL v2");
