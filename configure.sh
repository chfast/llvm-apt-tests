#!/bin/sh
set -e

case $SYSTEM in
    xenial) IMAGE='ubuntu:xenial' ;;
    jessie) IMAGE='debian:jessie'; LLVM_DIR='/usr/lib/llvm-3.8/share/llvm/cmake' ;;
esac

if [ $VERSION != 4.0 ]; then REPO_SUFFIX="-$VERSION"; fi

REPO="deb http://apt.llvm.org/$SYSTEM/ llvm-toolchain-$SYSTEM$REPO_SUFFIX main"

echo "Image: $IMAGE"
echo "Repo:  $REPO"
