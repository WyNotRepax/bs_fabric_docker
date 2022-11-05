#!/bin/bash
set -x
URL=https://meta.fabricmc.net/v2/versions/loader/1.19.2/0.14.10/0.11.1/server/jar

mkdir -p server

curl -J -o server/server-launcher.jar $URL
cp -r mods/ server/mods/
echo "eula=true" > server/eula.txt

docker compose up -d