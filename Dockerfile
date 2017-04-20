FROM debian:jessie
MAINTAINER Guido Classen <clagix@gmail.com>

LABEL description="A Linux C++ build for SWARCO Roadside unit software"


ENV DEBIAN_FRONTEND noninteractive

RUN apt-get --yes update && \
    apt-get --yes install git cpp gcc g++ make cmake libc6-dev libssl-dev

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*
