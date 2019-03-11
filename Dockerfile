FROM buildpack-deps:bionic
MAINTAINER Michael Kenzel <michael.kenzel@icg.tugraz.at>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install --yes --no-install-recommends software-properties-common
RUN add-apt-repository ppa:ubuntu-toolchain-r/test && apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc-8 g++-8 \
    cmake \
    ninja-build \
    imagemagick \
    ghostscript \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
