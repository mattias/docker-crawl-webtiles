# Crawl webtiles server
#
# VERSION 1.0

MAINTAINER Mattias

FROM ubuntu
RUN apt-get update
RUN apt-get install nginx
ADD default /etc/nginx/sites-available/default
RUN useradd crawl
ADD sshd_config /etc/ssh/sshd_config
EXPOSE 80

