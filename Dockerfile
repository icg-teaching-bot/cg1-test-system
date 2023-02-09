FROM ubuntu:22.04
MAINTAINER Michael Kenzel <michael.kenzel@icg.tugraz.at>

RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y --no-install-recommends \
    cmake \
    build-essential \
    gcc g++ \
    ninja-build \
    imagemagick \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*