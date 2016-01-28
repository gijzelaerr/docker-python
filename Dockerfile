FROM radioastro/base:0.2

MAINTAINER gijsmolenaar@gmail.com


RUN apt-get update && \
    apt-get install -y \
            build-essential \
            python-dev \
            libffi-dev \
            libssl-dev\
        && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD get-pip.py .

RUN python get-pip.py

# fix SNIMissingWarning for pip
RUN pip install pyopenssl ndg-httpsclient pyasn1

