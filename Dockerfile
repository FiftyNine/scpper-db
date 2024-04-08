FROM mysql:latest
EXPOSE 3306

ARG ONETIME_ROOT_PWD=123SomePass*&

ENV MYSQL_ROOT_PASSWORD=$ONETIME_ROOT_PWD
ENV MYSQL_ONETIME_PASSWORD=true

WORKDIR /docker-entrypoint-initdb.d
COPY 01-schema.sql .
COPY 02-dicts.sql .
COPY 03-default_branches.sql .