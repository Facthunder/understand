FROM python:3.8.5-slim-buster AS base

ENV UNDERSTAND_VERSION=5.1
ENV UNDERSTAND_BUILD=1004

ENV PATH="/opt/scitools/bin/linux64:${PATH}"
ENV STIHOME=/opt/scitools

ADD "http://builds.scitools.com/all_builds/b${UNDERSTAND_BUILD}/Understand/Understand-${UNDERSTAND_VERSION}.${UNDERSTAND_BUILD}-Linux-64bit.tgz" /tmp

RUN tar -xzvf /tmp/Understand-${UNDERSTAND_VERSION}.${UNDERSTAND_BUILD}-Linux-64bit.tgz -C /opt \
 && rm -f /tmp/Understand-${UNDERSTAND_VERSION}.${UNDERSTAND_BUILD}-Linux-64bit.tgz \
 && apt-get update -y \
 && apt-get install -y \
    libncurses5 \
    libglib2.0-0 \
 && rm -rf /var/lib/apt/lists/*

LABEL maintainer="begarco"
WORKDIR /src
