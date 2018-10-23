FROM ubuntu:18.10
MAINTAINER slaya <slaya@arsys.es>

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee>Hello Arsys!!!</marquee>' \
        > /usr/local/nginx/html/index.html

EXPOSE 80
