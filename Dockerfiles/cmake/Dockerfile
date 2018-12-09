FROM gcc:8.2.0 as build_cmake

RUN curl \
    --location https://github.com/Kitware/CMake/releases/download/v3.13.1/cmake-3.13.1-Linux-x86_64.sh \
    -o /usr/src/curl-install.sh

WORKDIR /usr/src
RUN chmod u+x curl-install.sh \
    && mkdir cmake_install \
    && ./curl-install.sh --skip-license --prefix=/usr/src/cmake_install

FROM gcc:8.2.0
COPY --from=build_cmake /usr/src/cmake_install/bin/ /usr/local/bin
COPY --from=build_cmake /usr/src/cmake_install/share/ /usr/local/share

WORKDIR /usr/src
