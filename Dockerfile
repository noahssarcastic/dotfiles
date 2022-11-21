# syntax=docker/dockerfile-upstream:master-labs

FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/noahssarcastic/dotfiles.git
WORKDIR /dotfiles
