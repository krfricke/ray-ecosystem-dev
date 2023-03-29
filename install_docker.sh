#!/bin/bash

export DOCKER_TLS_CERTDIR=/certs
export DOCKER_HOST=tcp://docker:2376
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/certs/client

apt-get update -qq && apt-get upgrade -qq
apt-get install -y -qq \
    curl python-is-python3 git build-essential \
    sudo unzip unrar apt-utils dialog tzdata wget rsync \
    language-pack-en tmux

curl -o- https://get.docker.com | sh
