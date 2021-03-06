FROM postgres:12.3
MAINTAINER Kristian Larsson <kristian@spritelink.net>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -qy postgresql-12-ip4r \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
