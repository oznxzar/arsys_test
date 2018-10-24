FROM ubuntu:18.10
MAINTAINER slaya <slaya@arsys.es>

RUN useradd slaya

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee>Hello Arsys!!!</marquee>' \
        > /var/www/html/index.html

RUN apt-get update

EXPOSE 80

ENV DATABASE_IP 192.167.2.9

RUN usermod -aG sudo slaya
USER slaya
VOLUME [ "/my-data" ]

#ENTRYPOINT [ "nginx","-g daemon off;" ]