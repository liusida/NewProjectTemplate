project(cudaProj1 CUDA)
cmake_minimum_required(VERSION 3.10)

file(GLOB SRC_FILE *.c*)
add_library(cudaProj1_lib ${SRC_FILE})
include_directories(include)
#enable cuda debug
target_compile_options(cudaProj1_lib PUBLIC $<$<COMPILE_LANGUAGE:CUDA>:-G>)
set(CMAKE_VERBOSE_MAKEFILE ON)
