FROM radioastro/base:0.2

MAINTAINER gijsmolenaar@gmail.com

ADD get-pip.py .

RUN python get-pip.py

RUN pip install certifi

