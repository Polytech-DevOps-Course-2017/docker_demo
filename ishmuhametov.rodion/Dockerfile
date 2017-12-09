FROM nginx

MAINTAINER Ishmuhametov Rodion <i.rodion.r@gmail.com>

RUN apt-get update

COPY html/index.html /usr/share/nginx/html
VOLUME /usr/share/nginx/html

EXPOSE 8080
