ARG CODE_VERSION=16.04

FROM ubuntu:${CODE_VERSION}

RUN  apt-get update -y && apt-get install nginx -y\
   && apt-get clean

COPY src/ /var/www/html


EXPOSE 80

CMD ["nginx", "-g","daemon off;"]

