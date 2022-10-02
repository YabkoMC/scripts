#!/bin/bash

docker stop gate_guard
docker rm gate_guard

cd gate_guard/
docker build -f Dockerfile -t gate_guard .

docker run \
  --name gate_guard \
  --detach \
  --restart always \
  -v /data/envs/gate_guard.json:/app/config.json:ro \
gate_guard:latest

