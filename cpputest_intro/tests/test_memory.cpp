extern "C"
{
#include "memory.h"
}

#include "CppUTest/TestHarness.h"

TEST_GROUP(memory)
{
    void setup()
    {
    }

    void teardown()
    {
    }
};

TEST(memory, catches_memory_leaks)
{
    memory_leak(12);
}
