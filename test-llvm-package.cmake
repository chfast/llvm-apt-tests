message("CMake ${CMAKE_VERSION}")
message("Prefix ${CMAKE_PREFIX_PATH}")

set(LLVM_DIR "/usr/share/llvm-${TEST_LLVM_VERSION}/cmake")

find_package(LLVM ${TEST_LLVM_VERSION} REQUIRED CONFIG)

message("LLVM ${LLVM_VERSION}")
