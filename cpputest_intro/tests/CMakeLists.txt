enable_language(CXX)

add_executable(test_cpputest_intro
    run_all_tests.cpp
    test_minimum.cpp
    test_module.cpp
    test_memory.cpp
)
target_link_libraries(test_cpputest_intro
    PRIVATE CppUTest production::production
)
target_compile_options(test_cpputest_intro
    PRIVATE "-Wall"
)
# Configure CTest
add_test(
    NAME test_cpputest_intro
    COMMAND test_cpputest_intro
)
