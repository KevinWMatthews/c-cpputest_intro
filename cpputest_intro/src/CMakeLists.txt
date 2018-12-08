add_library(module
    module.c
)
target_include_directories(module
    PUBLIC "${CMAKE_HOME_DIRECTORY}/include"
)
add_library(module::module ALIAS module)
