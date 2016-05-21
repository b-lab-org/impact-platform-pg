# Impact Platform: Postgres
[Docker](https://www.docker.com/) container for [Postgres](http://www.postgresql.org/).

## Overview
The Postgres Database. See [here](https://hub.docker.com/_/postgres/) for the official image documentation.

## Docker-Compose Usage
```
pg:
    image: impactbot/impact-platform-pg
    ports:
        - "5432:5432"
    environment:
        - POSTGRES_USER=myuser
        - POSTGRES_PASSWORD=mypassword
```
