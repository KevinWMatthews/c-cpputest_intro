add_library(production
    module.c
    memory.c
)
target_include_directories(production
    PUBLIC "${CMAKE_HOME_DIRECTORY}/include"
)
add_library(production::production ALIAS production)
