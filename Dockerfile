FROM buildpack-deps:xenial
MAINTAINER Michael Kenzel <michael.kenzel@icg.tugraz.at>

ENV DEBIAN_FRONTEND noninteractive

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc-7 g++-7 \
    xorg-dev \
    libgl1-mesa-dev \
    xvfb \
    imagemagick \
    ghostscript \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
  && wget https://cmake.org/files/v3.10/cmake-3.10.2-Linux-x86_64.sh
  && sh cmake-3.10.2-Linux-x86_64.sh
  && rm cmake-3.10.2-Linux-x86_64.sh
  
  
