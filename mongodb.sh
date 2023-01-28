#!/bin/bash

# wiredTigerCacheSizeGB: 限制mongodb使用的最大内存, 如果mongodb单独部署一台设备可以忽略此选项

name=mongodb

docker rm -f $name >/dev/null 2>&1
docker run \
    -itd \
    --restart=always \
    --name $name \
    -p 27017:27017 \
    -v /data/mongodb:/data/db \
    -e MONGO_INITDB_ROOT_USERNAME=root \
    -e MONGO_INITDB_ROOT_PASSWORD=root_pwd \
    mongo:latest \
    --auth \
    --wiredTigerCacheSizeGB 1