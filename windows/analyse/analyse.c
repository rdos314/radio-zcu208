#include <sys/types.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <sys/mman.h>

#define MAP_BASE 0x400000000
#define MAP_SIZE 0x100000000

int main()
{
    int fd = open("/dev/mem", O_RDWR);

    void *map = mmap(NULL, MAP_SIZE,
                     PROT_READ | PROT_WRITE,
                     MAP_SHARED, fd, MAP_BASE);

    volatile int *ptr = (int *)map;

    // Write
    ptr[0] = 0x12345678;

    // Read back
    printf("Read: 0x%08X\n", ptr[0]);

    munmap(map, MAP_SIZE);
    close(fd);
    return 0;
}
