#!/bin/bash

name=postgres

docker rm -f $name >/dev/null 2>&1
docker run \
    -itd \
    --restart=always \
    --name $name \
    -p 5432:5432 \
    -e POSTGRES_PASSWORD=password \
    -v /data/postgres:/var/lib/postgresql/data \
    postgres:13.2-alpine
