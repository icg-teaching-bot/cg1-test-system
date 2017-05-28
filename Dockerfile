FROM buildpack-deps:xenial
MAINTAINER Michael Kenzel <michael.kenzel@icg.tugraz.at>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    imagemagick \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
