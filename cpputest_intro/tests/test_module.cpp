extern "C"
{
#include "module.h"
}

#include "CppUTest/TestHarness.h"

TEST_GROUP(module)
{
};

TEST(module, must_be_42)
{
    int input = 42;
    CHECK_TRUE(module_is_42(input));
}
