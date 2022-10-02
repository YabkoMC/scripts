#!/bin/bash

docker run \
  --name auth \
  --detach \
  --env-file /data/envs/auth.env \
  --publish 172.17.0.1:9010:8080 \
  --restart always \
auth:latest
