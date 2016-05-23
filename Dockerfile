FROM ubuntu:15.04
MAINTAINER "The Impact Bot" <technology@bcorporation.net>

RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

RUN apt-get update && \
    apt-get install -y \
    python-software-properties \
    software-properties-common \
    postgresql-9.4 \
    postgresql-contrib-9.4 \
    sudo

RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.4/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.4/main/postgresql.conf
RUN echo "checkpoint_segments=200" >> /etc/postgresql/9.4/main/postgresql.conf

RUN mkdir -p /var/run/postgresql/9.4-main.pg_stat_tmp
RUN chown postgres.postgres /var/run/postgresql/9.4-main.pg_stat_tmp -R

ADD provision.sh /usr/local/bin/provision.sh
RUN chmod +x /usr/local/bin/provision.sh

EXPOSE 5432

CMD ["/usr/local/bin/provision.sh"]
