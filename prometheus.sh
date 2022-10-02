#!/bin/bash

docker run \
  --name prometheus \
  --detach \
  --restart always \
  -p 172.17.0.1:9090:9090 \
  -v /data/prometheus/config/prometheus.yml:/etc/prometheus/prometheus.yml: \
  -v /data/prometheus/data:/prometheus \
prom/prometheus --config.file=/etc/prometheus/prometheus.yml --storage.tsdb.retention.time 120d --storage.tsdb.path=/prometheus --web.console.libraries=/usr/share/prometheus/console_libraries --web.console.templates=/usr/share/prometheus/consoles
