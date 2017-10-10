FROM ubuntu:16.04
MAINTAINER laura

RUN apt-get -y update \
 && apt-get -y upgrade \
 && apt-get -y install nginx \
 && apt-get -y clean \
&& rm /etc/service/nginx/down

WORKDIR /root
