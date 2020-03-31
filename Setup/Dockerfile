#:#########################################################
# Dockerfile to build sandbox for executing user code
# Based on Ubuntu
############################################################

FROM chug/ubuntu14.04x64 
MAINTAINER ASAD MEMON, OSMAN ALI

# Update the repository sources list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade
#Install all the languages/compilers we are supporting.
RUN apt-get install -y gcc
RUN apt-get install -y g++
RUN apt-get install -y php5-cli
RUN apt-get install -y ruby
RUN apt-get install -y python
RUN apt-get install -y mono-xsp2 mono-xsp2-base

RUN apt-get install -y mono-vbnc
RUN apt-get install -y npm
RUN apt-get install -y golang-go	
RUN apt-get update

RUN apt-get -y install curl gnupg

RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -

RUN apt-get -y install nodejs

RUN npm install

RUN npm install -g underscore request express jade shelljs passport http sys jquery lodash async mocha moment connect validator restify ejs ws co when helmet wrench brain mustache should backbone forever  debug && export NODE_PATH=/usr/local/lib/node_modules/

RUN apt-get install -y clojure1.4


#prepare for Java download
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common

#grab oracle java (auto accept licence)
#RUN apt-get -y install software-properties-common
#RUN apt-get install -y --no-install-recommends software-properties-common
#RUN add-apt-repository -y ppa:openjdk-r/ppa
#RUN apt-get update
#RUN apt-get install -y openjdk-8-jdk
#RUN apt-get install -y openjdk-8-jre
#RUN update-alternatives --config java
#RUN update-alternatives --config javac

RUN apt-get install -y gobjc
#prepare for Java download


#RUN apt-get update && \

#       apt-get -y install sudo dialog apt-utils

#RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections


#grab oracle java (auto accept licence)
RUN add-apt-repository ppa:linuxuprising/java
RUN apt update
RUN yes | apt install -y oracle-java13-installer
RUN apt install -y oracle-java13-set-default 

ARG DEBIAN_FRONTEND=noninteractive


RUN sudo \

   echo "postfix postfix/mailname string aktiva.co.id" | debconf-set-selections && \

   echo "postfix postfix/main_mailer_type string 'Internet Site'" | debconf-set-selections

RUN apt-get install -y gnustep-devel &&  sed -i 's/#define BASE_NATIVE_OBJC_EXCEPTIONS     1/#define BASE_NATIVE_OBJC_EXCEPTIONS     0/g' /usr/include/GNUstep/GNUstepBase/GSConfig.h



RUN dpkg-divert --local --rename --add /sbin/initctl

RUN ln -s /bin/true /sbin/initctl




#RUN apt-get install -y scala
RUN apt-get install -y mysql-server
RUN apt-get install -y perl

RUN apt-get install -y curl
RUN mkdir -p /opt/rust && \
    curl https://sh.rustup.rs -sSf | HOME=/opt/rust sh -s -- --no-modify-path -y && \
    chmod -R 777 /opt/rust

RUN apt-get install -y sudo
RUN apt-get install -y bc

RUN echo "mysql ALL = NOPASSWD: /usr/sbin/service mysql start" | cat >> /etc/sudoers
