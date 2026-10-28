#!/bin/bash
sudo apt update && sudo apt install openjdk-21-jdk -y
if [ ! -f server.jar ]; then
wget https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/131/downloads/paper-1.21.1-131.jar -O server.jar
fi
echo "eula=true" > eula.txt
mkdir -p plugins
if [ ! -f plugins/playit-minecraft-plugin.jar ]; then
wget https://github.com/playit-cloud/playit-minecraft-plugin/releases/download/v1.6.5/playit-minecraft-plugin-v1.6.5.jar -O plugins/playit-minecraft-plugin.jar
fi
java -Xms2G -Xmx4G -jar server.jar nogui
