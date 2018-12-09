FROM gcc8-cmake:3.13.1 as build_cpputest

WORKDIR /usr/src
RUN git clone https://github.com/cpputest/cpputest.git
WORKDIR cpputest/cpputest_build
RUN git checkout 2b45d38c5c3dd71447bfe0ae993786a6da898658
RUN cmake -DC++11=ON -DTESTS=OFF ..
RUN make && make install

FROM gcc8-cmake:3.13.1

WORKDIR /usr/local/include/
COPY --from=build_cpputest /usr/local/include/CppUTest/ ./CppUTest/
COPY --from=build_cpputest /usr/local/include/CppUTestExt/ ./CppUTestExt/

WORKDIR /usr/local/lib/
COPY --from=build_cpputest /usr/local/lib/CppUTest/ ./CppUTest/
COPY --from=build_cpputest /usr/local/lib/libCppUTest.a .
COPY --from=build_cpputest /usr/local/lib/libCppUTestExt.a .
COPY --from=build_cpputest /usr/local/lib/pkgconfig/cpputest.pc ./pkgconfig/

WORKDIR /usr/src
