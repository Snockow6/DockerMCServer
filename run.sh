#!/bin/bash
usermod -u $PUID abc
groupmod -g $PGID abc

chown -R abc /Minecraft

# Set eula variable in eula.txt
runuser -l abc -c "echo 'eula=$EULA' > /Minecraft/eula.txt"

# This if statement makes sure the server.jar file exists
if [ -f "/Minecraft/server.jar" ]; then
  echo "server.jar exists. now running minecraft server"
else
  runuser -l abc -c "wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar -P /Minecraft"
fi

runuser -l abc -c "java -Xmx$MEM -Xms$MEM -jar /Minecraft/server.jar nogui" 
