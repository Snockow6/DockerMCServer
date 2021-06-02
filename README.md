# DockerMCServer
This is a Dockerfile that will build a ubuntu:20.04 container that will download minecraft server 1.16.5 and run it.

Running another version of minecraft server is as easy as downloading and renaming the jar file to server.jar and placing it into the folder that has been mounted inside the container. by defualt if it is empty it will create a eula.txt file and download minecraft server 1.16.5 from the mojang website.

enviroment variables
 - MEM - this variable will set the memory of the minecraft server (it sets both xmx and xms to this) (default value is 1024M)
 - EULA - this sets the eula file (default value is true)
 - PUID - UID for the user
 - PGID - GID for the group

volumes:
  - /location/for/files:/Minecraft - all files for the minecraft server are in the /Minecraft folder

