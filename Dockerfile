FROM ubuntu:16.04
MAINTAINER laura

RUN apt-get -y update \
 && apt-get -y upgrade \
 && apt-get -y install nginx \
 && apt-get -y clean \
&& rm -f /etc/service/nginx/down

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

STOPSIGNAL SIGTERM

WORKDIR /root
