#!/bin/bash

docker rm -f dub

cd ~/projects/dub/

git pull

docker build -f Dockerfile -t dub .

~/scripts/auth/dub.sh
