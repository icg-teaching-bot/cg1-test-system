FROM ubuntu:22.04

RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y --no-install-recommends \
    cmake \
    build-essential \
    gcc-12 g++-12 \
    ninja-build \
    imagemagick \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*