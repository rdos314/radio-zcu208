#include <sys/types.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <sys/mman.h>

#define MAP_BASE 0x400000000
#define MAP_SIZE 0x100000000

#define bool int
#define false 0
#define true 1

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

    if (header->freq < 40000)
        return false;

    if (header->freq > 195000)
        return false;

    if (header->freq > 50000 && header->freq < 185000)
        return false;

    printf("{\n");
    printf("  sample: %ld\n", header->sample);
    printf("  angle: %d\n", header->angle);
    printf("  doa_error: %d\n", header->doa_error);
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
    int i;
    bool ok;
    int fd = open("/dev/mem", O_RDWR);

    char *map = (char *)mmap(NULL, MAP_SIZE,
                     PROT_READ | PROT_WRITE,
                     MAP_SHARED, fd, MAP_BASE);

    volatile struct AdcHeader *header = (struct AdcHeader *)map;

    ok = print_one(header);

    while (ok)
    {
        header += header->blocks + 1;
        ok = print_one(header);
    }

    munmap(map, MAP_SIZE);
    close(fd);
    return 0;
}
