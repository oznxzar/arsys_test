FROM ubuntu:18.10
MAINTAINER slaya <slaya@arsys.es>

RUN apt-get update
RUN apt-get install nginx -y

# RUNecho '<marquee>Hello Arsys!!!</marquee>' \
#        > /var/www/html/index.html

COPY index.html /var/www/html/index.html

EXPOSE 80