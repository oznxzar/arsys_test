FROM ubuntu:18.10
MAINTAINER slaya <slaya@arsys.es>

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee>Hello Arsys!!!</marquee>' \
        > /var/www/html/index.html

RUN apt-get update

EXPOSE 80

WORKDIR /var/www/html

ENTRYPOINT [ "nginx","-g daemon off;" ]