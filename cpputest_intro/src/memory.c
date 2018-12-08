#include "memory.h"

void memory_leak(size_t buffer_size)
{
    void *leak_me = malloc(buffer_size);
}
