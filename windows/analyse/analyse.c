#include <sys/types.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <sys/mman.h>

#define MAP_BASE 0x400000000
#define MAP_SIZE 0x100000000

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
    struct AdcEntry entry_arr[100];
};

int main()
{
    int i;
    int fd = open("/dev/mem", O_RDWR);

    char *map = (char *)mmap(NULL, MAP_SIZE,
                     PROT_READ | PROT_WRITE,
                     MAP_SHARED, fd, MAP_BASE);

    volatile struct AdcHeader *header = (struct AdcHeader *)map;
    volatile struct AdcEntry *entry;

    entry = &header->entry_arr[0];
    for (i = 0; i < header->size; i++)
    {
        printf("%d\r\n", entry->env);
        entry += 1;
    }

    munmap(map, MAP_SIZE);
    close(fd);
    return 0;
}
