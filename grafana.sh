#!/bin/bash

docker run \
  --name grafana \
  --restart always \
  --detach \
  --publish 172.17.0.1:3000:3000 \
  -v /data/grafana/data:/var/lib/grafana \
  -v /data/grafana/config:/etc/grafana/ \
grafana/grafana:latest-ubuntu
