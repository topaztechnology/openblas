FROM ubuntu:20.04

ARG OPENBLAS_VERSION=0.3.20
ARG OPENBLAS_FLAGS="NO_LAPACK=0 USE_HEAP_ALLOC=1 DYNAMIC_ARCH=1 CFLAGS=-O2"

RUN \
  apt update && \
  apt -qy install build-essential gfortran curl wget bash && \
  wget --quiet "https://github.com/xianyi/OpenBLAS/releases/download/v${OPENBLAS_VERSION}/OpenBLAS-${OPENBLAS_VERSION}.tar.gz" -O /tmp/openblas.tar.gz && \
  tar zxvf /tmp/openblas.tar.gz -C /tmp && \
  cd /tmp/OpenBLAS-${OPENBLAS_VERSION} && \
  make ${OPENBLAS_FLAGS} && \
  make ${OPENBLAS_FLAGS} install && \
  rm /tmp/openblas.tar.gz && \
  rm -r /tmp/OpenBLAS-${OPENBLAS_VERSION} && \
  apt -qy purge build-essential gfortran curl wget && \
  apt clean && \
  apt -qy autoremove
