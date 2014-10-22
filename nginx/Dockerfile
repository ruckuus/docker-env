# nginx: Dockerfile for building nginx images 
FROM ubuntu:12.04
MAINTAINER "ruckuus@gmail.com"
RUN echo "deb http://mirror.nus.edu.sg/ubuntu/ precise main universe" >> /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y nginx-full && \
    rm -fv /etc/nginx/nginx.conf 

ADD nginx.conf /etc/nginx/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80
VOLUME [ "/etc/nginx/sites-enabled", "/var/log/nginx"]
WORKDIR /etc/nginx 
CMD service nginx start
