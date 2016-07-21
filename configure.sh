#!/bin/sh
set -e

case $SYSTEM in
    xenial) IMAGE='ubuntu:xenial' ;;
    jessie) IMAGE='debian:jessie' ;;
esac

if [ $VERSION != 4.0 ]; then REPO_SUFFIX="-$VERSION"; fi

REPO="deb http://apt.llvm.org/$SYSTEM/ llvm-toolchain-$SYSTEM$REPO_SUFFIX main"

echo "Image: $IMAGE"
echo "Repo:  $REPO"
