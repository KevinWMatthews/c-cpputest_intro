# c/cpputest_intro

Test-driven development in C using
[CppUTest](http://cpputest.github.io/manual.html) with memory leak checks on unit tests.

Configure with CMake. Run with Docker.


## Background

Setting up a compilation environment can be complex, even for a simple code base. This project demonstrates one approach to a scalable build system with unit tests.

It can be compiled with CMake and gcc using two different environments:

  * System CMake/gcc
  * Docker


## Project Structure

  * `cpputest_intro/` subdirectory contains the source code
  * `build_production/` holds build artifacts for release builds
  * `build_test/` holds build artifacts for unit tests
  * `Dockerfiles/` contains files for Docker
  * `docker_run.sh` is a wrapper around the `docker run` command
  * `docs/` contains the source for the documentation web pages


## Getting Started

See the [documentation pages](https://kevinwmatthews.github.io/c-cpputest_intro/) for details.
