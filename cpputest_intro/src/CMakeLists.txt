add_library(production
    module.c
    memory.c
)
target_include_directories(production
    PUBLIC "${CMAKE_HOME_DIRECTORY}/include"
)
if(COMPILE_TESTS)
    # To enable CppUTest's memory leak detection,
    # pass a preprocessor option to include a specific header file and
    # link against the CppUtest library.
    # See http://cpputest.github.io/manual.html#memory_leak_detection
    target_compile_options(production
        PRIVATE -include CppUTest/MemoryLeakDetectorMallocMacros.h
    )
    target_link_libraries(production
        PRIVATE CppUTest
    )
endif()
target_compile_options(production
    PRIVATE "-Wall"
)
add_library(production::production ALIAS production)
