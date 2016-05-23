FROM postgres:9.4
MAINTAINER "The Impact Bot" <technology@bcorporation.net>

RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.4/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.4/main/postgresql.conf
RUN echo "checkpoint_segments=200" >> /etc/postgresql/9.4/main/postgresql.conf
