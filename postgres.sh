#!/bin/bash

docker run \
  --name postgres \
  --restart always \
  --detach \
  --publish 172.17.0.1:5432:5432 \
  --volume /data/postgres/data:/var/lib/postgresql/data  \
  --env POSTGRES_PASSWORD=password \
postgres:12
