extern "C"
{
#include "module.h"
}

#include "CppUTest/TestHarness.h"

TEST_GROUP(module)
{
    void setup()
    {
    }

    void teardown()
    {
    }
};

TEST(module, can_be_42)
{
    int input = 43;
    // CHECK_TRUE(is_42(input));
}
