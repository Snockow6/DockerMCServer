#!/bin/sh
#copy minecraft server into folder if it doesnt exist
/srv/serverfiles/CheckFiles.sh

#set eula file
touch /srv/mcserver/eula.txt
echo eula=$eula > /srv/mcserver/eula.txt

#run minecraft server
java -Xmx$mem -Xms$mem -jar /srv/mcserver/server.jar nogui 
