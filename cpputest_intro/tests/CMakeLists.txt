enable_language(CXX)

add_executable(Test_Intro
    RunAllTests.cpp
)
target_link_libraries(Test_Intro
    PRIVATE
        CppUTest
)
# Configure CTest
add_test(
    NAME Test_Intro
    COMMAND Test_Intro
)
