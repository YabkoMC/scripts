docker run \
  --name redis \
  --publish 172.17.0.1:6379:6379 \
  --volume /data/redis:/data \
  --detach \
  --restart always \
redis redis-server /data/redis.conf
