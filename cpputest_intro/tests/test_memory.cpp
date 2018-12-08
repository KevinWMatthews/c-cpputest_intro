extern "C"
{
#include "memory.h"
}

#include "CppUTest/TestHarness.h"

TEST_GROUP(memory)
{
};

TEST(memory, catches_memory_leak)
{
    // Uncomment this to see a memory leak
    // memory_leak(12);
}
