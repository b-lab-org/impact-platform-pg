FROM postgres:9.4-alpine
MAINTAINER "The Impact Bot" <technology@bcorporation.net>

RUN apk add --update --no-cache \
    sudo
    
ADD provision.sh /docker-entrypoint-initdb.d/provision.sh

EXPOSE 5432
