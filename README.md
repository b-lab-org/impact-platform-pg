# Impact Platform: Postgres
[Docker](https://www.docker.com/) container for [Postgres](http://www.postgresql.org/).

## Overview
The Postgres Database. Sets up a database named `POSTGRES_DB`, with owner `POSTGRES_USER`.

## Docker-Compose Usage
```
pg:
    image: impactbot/impact-platform-pg
    ports:
        - "5432:5432"
    environment:
        - POSTGRES_PASSWORD=mypassword
        - POSTGRES_USER=myuser
        - POSTGRES_DB=mydb
        - POSTGRES_INITDB_ARGS="--my-db-arg=value --another-arg=anothervalue"
```
