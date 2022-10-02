#!/bin/bash

docker run \
  --name dub \
  --detach \
  --env-file /data/envs/dub.env \
  --volume /data/dub/skins:/app/media \
  --publish 172.17.0.1:9010:8080 \
  --restart always \
dub:latest
