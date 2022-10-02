#!/bin/bash

docker run \
  --name gate_guard \
  --detach \
  --restart always \
  -v /data/envs/gate_guard.json:/app/config.json:ro \
gate_guard:latest
