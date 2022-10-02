docker run \
  --publish 172.17.0.1:27017:27017 \
  --env MONGO_INITDB_ROOT_USERNAME="admin" \
  --env MONGO_INITDB_ROOT_PASSWORD="root" \
  --volume /data/mongo:/data/db \
  --detach \
  --restart always \
  --name mongodb \
mongo:4.4
