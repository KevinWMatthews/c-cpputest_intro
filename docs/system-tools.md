---
layout: page
title: CMake/gcc
---

Use your system's CMake and gcc to configure, compile, and test.


## Background

If your system already has compatible versions of CMake and gcc installed,
the project can be configured and build locally.


## Prerequisites

  * CMake 3.5+
  * gcc
  * git (optional)


## Setup

### Install/Compile CppUTest

Your distribution may include CppUTest as a system package. You can use it to
good effect for most tests. If you prefer to build your own version, read on.

I prefer to use a bleeding-edge build (after `v3.8`) to incorporate a bugfix for
copiers and comparators. If you aren't doing that, building from `v3.8` should be fine.

```bash
$ git clone https://github.com/cpputest/cpputest.git
$ cd cpputest/cpputest_build/
$ git checkout 2b45d38c5c3dd71447bfe0ae993786a6da898658
# Alter the CMake flags as you see fit.
$ cmake -DC++11=ON -DTESTS=OFF ..
$ make
$ sudo make install && sudo ldconfig
```


## Test Build

Compiling unit tests is optional. For illustration, this project will compile
tests by default.


### Configure and Compile

Configure and compile as for a typical CMake project:
```bash
$ cd build_test/
$ cmake ../cpputest_intro
$ make
```


### Run Tests

CMake will run all test suites with:
```bash
$ ctest
# or
$ make test
```

To run individual test executables, run:
```bash
# ./bin/<test_executable>
$ ./bin/test_cpputest_intro
```

I prefer to colorize the output with:
```bash
$ ./bin/test_cpputest_intro -c
```

## Production Build

It is important to distinguish between test and production builds. Unit tests
often override behavior of production code with mocks, custom functions, and
memory leak checks.


### Configure and Compile

Configure and compile in a different build directory to avoid conflicting
with the test build:
```bash
$ cd build/
$ cmake ../cpputest_intro -DCOMPILE_TESTS=OFF
$ make
```

### Run Production Code

This project is designed to illustrate unit testing. It contains a library of
production code but no executables.
