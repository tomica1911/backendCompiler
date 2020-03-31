FROM gitpod/workspace-full-vnc
                    
USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/

#!/bin/sh

###########################
# Docker SETUP
###########################
RUN sudo apt-get update
RUN sudo apt-get install -y docker.io

RUN sudo echo "Docker Setup complete"

###########################
# NodeJS setup
###########################
RUN sudo apt-get update
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y npm
RUN sudo echo "NodeJS setup Complete"

###########################
# Start Docker
###########################

RUN sudo systemctl restart docker
RUN sudo ./UpdateDocker.sh
