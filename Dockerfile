FROM ubuntu:latest
MAINTAINER Volodymyr Yampolskyi vladimir.yampolskyi@gmail.com

RUN apt-get update \
    && apt-get -y install software-properties-common \
    make \
    python2.7 \
    python-pip \
    python-virtualenv

RUN pip install psutil

COPY metric /

ENTRYPOINT /bin/bash
