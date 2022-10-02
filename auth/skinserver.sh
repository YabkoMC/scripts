#!/bin/bash

docker run \
  --name skin \
  --detach \
  --env-file /data/envs/skin.env \
  --publish 172.17.0.1:9011:8080 \
  --restart always \
skin:latest
