#include <sys/types.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <poll.h>
#include <fcntl.h>

#define MAP_SIZE     0x4000000
#define MAP_ENTRIES  (MAP_SIZE >> 5)

struct AdcEntry
{
    short int env;
    short int phase;
};

struct AdcHeader
{
    long long sample;
    unsigned char blocks;
    unsigned char flags;
    short int size;
    short int angle;
    short int doa_error;
    int freq;
    short int max_env;
    short int max_pos;
    short int env_mean;
    short int env_std;
    short int phase_std;
    short int freq_std;
};

bool print_one(volatile struct AdcHeader *header)
{
    volatile struct AdcEntry *entry;
    int i;
    double angle;
    double perc;

    if (header->flags & 0x40)
    {
        printf("  pad: %d\n", header->blocks);
        return true;
    }

    if (header->freq < 40000)
        return false;

    if (header->freq > 195000)
        return false;

    if (header->freq > 50000 && header->freq < 185000)
        return false;

    printf("{\n");
    printf("  sample: %ld\n", header->sample);

    angle = 180.0 / 32768.0 * (double)header->angle;
    printf("  angle: %2.1f\n", angle);

    perc = 0.1 * (double)header->doa_error;
    printf("  doa_error: %2.1f%%\n", perc);

    printf("  freq: %d\n", header->freq);
    printf("  freq_std: %d\n", header->freq_std);
    printf("  phase_std: %d\n", header->phase_std);
    printf("  max_pos: %d\n", header->max_pos);
    printf("  max_env: %d\n", header->max_env);
    printf("  env_mean: %d\n", header->env_mean);
    printf("  env_std: %d\n", header->env_std);

     entry = (volatile struct AdcEntry *)(header+1);
    printf("  data: [");
    for (i = 0; i < header->size; i++)
    {
        if (i != header->size - 1)
            printf("%d, ", entry->env);
        else
            printf("%d", entry->env);
        entry += 1;
    }
    printf("]\n");
    printf("}\n\n");

   return true;
}

int main()
{
    int fd;
    struct pollfd fds[1];
    char* data_buf;
    int* regs;
    bool ok;
    int pos;
    struct AdcHeader *header;
    volatile int* write_ptr_reg; // Input from PL
    volatile int* read_ptr_reg; // Output to PL
    char dummy;

    fd = open("/dev/axidma", O_RDWR | O_SYNC);

    if (fd > 0)
    {
        data_buf = (char*)mmap(NULL, MAP_SIZE, PROT_READ, MAP_SHARED, fd, 0);
        regs = (int*)mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 4096);

        fds[0].fd = fd;
        fds[0].events = POLLIN; // Wait for "read" readiness (set in driver mask)

        // AXI GPIO Offsets: Channel 1 is 0x0, Channel 2 is 0x8
        write_ptr_reg = &regs[0];
        read_ptr_reg  = &regs[2];

        ok = true;
    }
    else
        ok = false;

    *read_ptr_reg = 0x80000001;
    pos = 0;
    *read_ptr_reg = pos;

    while (ok)
    {
        // 1. If we are lagging, process immediately without polling
        if (pos == *write_ptr_reg) 
        {
            // Tell the driver we are ready for a new interrupt signal
            read(fd, &dummy, 1); 
        
            // Double check after arming to avoid a race condition
            if (pos == *write_ptr_reg) {
                poll(fds, 1, -1);
            }
        }
    
        header = (struct AdcHeader *)(data_buf + (pos << 5));
        ok = print_one(header);
        
        if (ok)
        {
            pos = (pos + header->blocks + 1) % MAP_ENTRIES;
            *read_ptr_reg = pos;
        }
        else
            printf("Invalid data at pos %d\n", pos);
    }

    if (fd > 0)
    {
        munmap(data_buf, MAP_SIZE);
        munmap(regs, 4096);
        close(fd);
    }
    
    return 0;
}
