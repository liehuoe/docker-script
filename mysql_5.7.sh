#!/bin/bash

name=mysql

docker rm -f $name >/dev/null 2>&1
docker run \
    -itd \
    --restart=always \
    --name $name \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=root_pwd \
    -v /data/mysql:/var/lib/mysql \
    mysql:5.7
