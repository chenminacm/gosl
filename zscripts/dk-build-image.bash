#!/bin/bash

NAME="gosl"
VERSION="latest"

echo
echo
echo "... docker .................................................."
echo "............................................................."
echo

docker build --no-cache -t gosl/$NAME:$VERSION . --build-arg GOSL_VERSION=$VERSION
docker images -q -f "dangling=true" | xargs docker rmi
