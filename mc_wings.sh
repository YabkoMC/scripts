#!/bin/bash

docker run \
  --name mc_wings \
  --restart always \
  --detach \
  --publish 172.17.0.1:9003:8443 \
  --publish 20122:20122 \
  --env TZ="Europe/Kiev" \
  --env WINGS_UID=988 \
  --env WINGS_GID=988 \
  --env WINGS_USERNAME=pterodactyl \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /var/lib/docker/containers:/var/lib/docker/containers \
  --volume /data/yabko_root/pterodactyl/wings/config/:/etc/pterodactyl/ \
  --volume /var/lib/pterodactyl/:/var/lib/pterodactyl/ \
  --volume /var/log/pterodactyl/:/var/log/pterodactyl/ \
  --volume /tmp/pterodactyl/:/tmp/pterodactyl/ \
  --volume /etc/ssl/certs:/etc/ssl/certs:ro \
ghcr.io/pterodactyl/wings:develop
#pterodactyl-wings:ubuntu wings --ignore-certificate-errors
