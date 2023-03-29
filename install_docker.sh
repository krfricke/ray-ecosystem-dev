#!/bin/bash

export DOCKER_TLS_CERTDIR=/certs
export DOCKER_HOST=tcp://docker:2376
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/certs/client

sudo apt-get update -qq && apt-get upgrade -qq
sudo apt-get install -y -qq \
    curl python-is-python3 git build-essential \
    sudo unzip unrar apt-utils dialog tzdata wget rsync \
    language-pack-en tmux

sudo curl -o- https://get.docker.com | sh
