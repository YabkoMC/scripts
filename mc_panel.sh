#!/bin/bash

docker run \
  --detach \
  --name mc_panel \
  --restart always \
  --publish 172.17.0.1:9002:9000 \
  --volume /data/yabko_root/pterodactyl/panel/var:/app/var \
  --volume /data/yabko_root/pterodactyl/panel/logs:/app/storage/logs \
  --env APP_URL=https://mc.example.me \
  --env APP_TIMEZONE=Europe/Kiev \
  --env DB_HOST=172.17.0.1 \
  --env DB_PORT=3306 \
  --env DB_DATABASE=pter_db \
  --env DB_USERNAME=pter_user \
  --env DB_PASSWORD=pter_password \
  --env CACHE_DRIVER=redis \
  --env REDIS_HOST=172.17.0.1 \
  --env REDIS_PORT=6379 \
  --env REDIS_DATABASE=2 \
  --env REDIS_DATABASE_SESSIONS=3 \
  --env MAIL_DRIVER=smtp \
  --env MAIL_FROM=pterodactyl@example.me \
  --env MAIL_HOST=aspmx.l.google.com \
  --env MAIL_PORT=25 \
  --env MAIL_USERNAME=example@gmail.com \
  --env MAIL_PASSWORD=password \
mc_panel:latest
