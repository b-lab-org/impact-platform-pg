# Impact Platform: Postgres
[Docker](https://www.docker.com/) container for [Postgres](http://www.postgresql.org/).

## Overview
The Postgres Database. Sets up a database named `DB_DATABASE`, with owner `DB_USERNAME`.

## Docker-Compose Usage
```
pg:
    image: impactbot/impact-platform-pg
    ports:
        - "5432:5432"
    environment:
        - DB_USERNAME=myuser
        - DB_PASSWORD=mypassword
        - DB_DATABASE=database
```
