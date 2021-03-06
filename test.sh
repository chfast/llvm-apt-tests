#!/bin/sh

CONTAINER=`docker run -d ubuntu:xenial tail -f /dev/null`

docker exec $CONTAINER cat /etc/issue
docker exec $CONTAINER sh -c 'echo "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.8 main" >> /etc/apt/sources.list'
docker exec $CONTAINER apt-get -qq update
docker exec $CONTAINER apt-get -qq install -y --allow-unauthenticated cmake llvm-3.8-dev

docker cp test-llvm-package.cmake $CONTAINER:/test-llvm-package.cmake

docker exec $CONTAINER dpkg-query -L llvm-3.8-dev
docker exec $CONTAINER cmake -P test-llvm-package.cmake

docker kill $CONTAINER
