enable_language(CXX)

add_executable(test_cpputest_intro
    run_all_tests.cpp
    test_minimum.cpp
)
target_link_libraries(test_cpputest_intro
    PRIVATE
        CppUTest
)
# Configure CTest
add_test(
    NAME test_cpputest_intro
    COMMAND test_cpputest_intro
)
