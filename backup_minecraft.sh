#!/bin/bash

TIMESTAMP=`date +%F-%H%M`
BACKUP_NAME_PREFIX=yabko_server
BACKUP_NAME=${BACKUP_NAME_PREFIX}_${TIMESTAMP}

RCON_ADDR=172.18.0.1:25575
RCON_PASSWORD=password

SERVER_DIR=/data/yabko_root/pterodactyl/volumes/c36b5264-15b6-448f-80a5-c57c46aad4fa
BACKUPS_DIR=/data/backups

echo "> Starting backup ${BACKUP_NAME}"

echo "> Change dir to backups tmp..."
cd $BACKUPS_DIR/tmp

echo "> Running save-all command..."
docker run -it --rm outdead/rcon ./rcon -a $RCON_ADDR -p $RCON_PASSWORD "/say Збереження..."
docker run -it --rm outdead/rcon ./rcon -a $RCON_ADDR -p $RCON_PASSWORD "/save-all"
sleep 1

echo "> Copying server..."
cp -r $SERVER_DIR .

echo "> Archiving copied server..."
tar czvf $BACKUP_NAME.tgz .

echo "> Uploading archive to Google Drive..."
rclone copy $BACKUP_NAME.tgz gdrive:Canterlot/backups

echo "> Removing old backups..."
rm $BACKUPS_DIR/$BACKUP_NAME_PREFIX*

echo "> Moving archive and cleaning tmp..."
mv $BACKUP_NAME.tgz $BACKUPS_DIR
cd $BACKUPS_DIR
rm -rf $RACKUPS_DIR/tmp/*

echo "> Done!"
