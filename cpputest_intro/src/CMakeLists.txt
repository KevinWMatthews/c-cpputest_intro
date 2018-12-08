add_library(production
    module.c
    memory.c
)
target_include_directories(production
    PUBLIC "${CMAKE_HOME_DIRECTORY}/include"
)
if(COMPILE_TESTS)
    # Pass a preprocessor option to enable CppUTest's memory leak detection
    target_compile_options(production
        PRIVATE -include CppUTest/MemoryLeakDetectorMallocMacros.h
    )
    target_link_libraries(production
        PRIVATE CppUTest
    )
endif()
add_library(production::production ALIAS production)
