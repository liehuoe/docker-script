#!/bin/bash

# 使用redis命令行: docker exec -it $name redis-cli -a auth_pwd

name=redis

docker rm -f $name >/dev/null 2>&1
docker run \
    -itd \
    --restart=always \
    --name $name \
    -p 6379:6379 \
    redis \
    --requirepass auth_pwd
