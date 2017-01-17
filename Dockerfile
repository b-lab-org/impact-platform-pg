FROM postgres:9.4-alpine
MAINTAINER "The Impact Bot" <technology@bcorporation.net>

RUN apk add --update --no-cache \
    sudo
    
ADD init-db-user.sh /docker-entrypoint-initdb.d/init-user-db.sh

ADD provision.sh /usr/local/bin/provision.sh
RUN chmod +x /usr/local/bin/provision.sh
RUN /usr/local/bin/provision.sh

EXPOSE 5432
