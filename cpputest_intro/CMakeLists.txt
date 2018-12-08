cmake_minimum_required(VERSION 3.5.1 FATAL_ERROR)

project(CppUTestIntro VERSION 1.0.0)
enable_language(C)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")

option(COMPILE_TESTS "Compile unit tests" ON)

if(COMPILE_TESTS)
    enable_testing()
    find_package(CppUTest 3.8 REQUIRED)
    add_subdirectory(tests)
endif()
