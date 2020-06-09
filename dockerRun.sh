#!/bin/sh

#echo enter folder location
#read userInput
docker run -v /home/$USER/Docker/mcserver:/srv/mcserver -p 25565:25565 -e mem=4096M -e eula=true --name mcServer snockow6/mcserver:v3

