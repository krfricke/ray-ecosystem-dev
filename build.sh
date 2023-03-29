#!/bin/bash

SHARED_DIR=/shared

cp -rf ./docker $SHARED_DIR
pushd $SHARED_DIR/docker
docker build -t "$1" .
popd
