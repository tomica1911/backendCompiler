FROM gitpod/workspace-full-vnc
                    
USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/

#!/bin/sh

#!/bin/sh

###########################
# Docker SETUP
###########################
RUN apt-get update
RUN apt-get install -y docker.io

RUN echo "Docker Setup complete"

###########################
# NodeJS setup
###########################
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN echo "NodeJS setup Complete"
