---
layout: page
title:  TDD in C with CppUTest
---

Test-driven development in C using
[CppUTest](http://cpputest.github.io/manual.html) with memory leak checks on unit tests.

Configure with CMake. Run with Docker.


## Background

This project demonstrates how to compile an application against the unit testing
framework CppUTest. It features two compilation methods:

  * Your system's [CMake and gcc](system-tools.md)
  * [Docker](docker.md)


## Directory Structure

### Build System

The layout of the build system is:
```
.
├── build_production/
├── build_test/
├── cpputest_intro/
├── Dockerfiles/
├── docker_run.sh*
├── docs/
├── LICENSE
├── production.env.example
├── README.md
└── test.env.example
```

`cpputest_intro/` contains the source and test code.

`build_production/` is for out-of-tree release/production builds.

`build_test/` is for out-of-tree test builds.

`Dockerfiles/` contains Dockerfiles that can be used for compilation and testing.
I've included it for your convenience, but typically you'll fetch images yourself.

`docker_run.sh` is a helper script for starting a Docker container.

The `.env.example` files demonstrates how to configure `docker_run.sh`. This
isn't required but it makes things easier.

`docs/` contains the source code for these documentation pages.
You are welcome to take a look but you’re already reading the result.


### Source Code

The structure of the source code directory is:
```
.
├── cpputest_intro/
│   ├── CMakeLists.txt
│   ├── include/
│   ├── src/
│   └── tests/
```

`include/` contains header files for the project's public interface.

`src/` contains production code.

`tests/` contains code for unit tests.


## Build Instructions

For detailed build instructions, see one of the following:

  * [CMake/gcc](system-tools.md)
  * [Docker](docker.md)
