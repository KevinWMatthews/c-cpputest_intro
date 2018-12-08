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

TEST(module, wiring_check)
{
    FAIL("Wiring check");
}
