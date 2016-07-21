cmake_minimum_required(VERSION 2.8)
project(test LANGUAGES C)
message("CMake ${CMAKE_VERSION}")

find_package(LLVM ${TEST_LLVM_VERSION} REQUIRED CONFIG)

message("LLVM ${LLVM_VERSION}")
