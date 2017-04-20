FROM debian:jessie
MAINTAINER Guido Classen <clagix@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get --yes update && \
    apt-get --yes install git cpp gcc g++ make cmake libc6-dev libssl-dev
