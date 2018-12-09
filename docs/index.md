---
layout: page
title:  TDD in C with CppUTest
---

Unit tests with memory leak checks in C, courtesy of
[CppUTest](http://cpputest.github.io/manual.html).

Configure with CMake. Run with Docker.

## Background

This project demonstrates how to compile an application against the unit testing
framework CppUTest. It features two compilation methods:

  * system tools
  * Docker


## Directory Structure

### High-Level

The build system layout is:
```
.
├── build
├── build_test
├── cpputest_intro
├── Dockerfiles
├── docker_run.sh
├── docs
├── example.env
├── LICENSE
└── README.md
```

`cpputest_intro/` contains the source and test code.

`build/` is for out-of-tree release/production builds.

`build_test/` is for out-of-tree builds of unit tests.

`Dockerfiles/` contains Dockerfiles that can be for compilation. I've included
it for your convenience, but typically you'll fetch images yourself.

`docker_run.sh` is a helper script for starting a Docker container.

`example.env` demonstrates how to configure `docker_run.sh`. It isn't required
but it makes things easier

`docs/` contains the source code for these documentation pages.
You are welcome to take a look but you’re already reading the result.


### Source Code

The structure of the source code directory is:
```
.
├── cpputest_intro
│   ├── CMakeLists.txt
│   ├── include
│   ├── src
│   └── tests
```

`include/` contains header files for the project's public interface.

`src/` contains private source code.

`tests/` contains code for unit tests.


## Build Instructions

For detailed build instructions, see one of the following:

  * system tools
  * Docker
