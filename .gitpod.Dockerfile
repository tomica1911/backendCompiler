FROM ubuntu:16.04
                    
USER root

RUN apt-get update

RUN apt-get install -y docker.io

WORKDIR /home/apps

COPY . .

WORKDIR /home/apps/Setup

RUN sh Install_16.04.sh

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/

#!/bin/sh
