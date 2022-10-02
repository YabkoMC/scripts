#!/bin/bash

docker run \
  --name mariadb \
  --restart always \
  --detach \
  --publish 172.17.0.1:3306:3306 \
  --publish 192.168.42.3:3306:3306 \
  --volume /data/mariadb/data:/var/lib/mysql \
  --volume /data/mariadb/config:/etc/mysql/conf.d \
  --env MARIADB_ROOT_PASSWORD=password \
mariadb:10.5.11
