# DockerMCServer
Files required to build a docker container that can run minecraft server in 

requirements to build container
- docker must be installed on machine
- the minecraft server jar file will need to be downloaded and must be named server.jar

enviroment variables
 - mem - this variable will set the memory of the minecraft server (it sets both xmx and xms to this) (default value is 1024M)
 - eula - this sets the eula file (default value is true)

ther is a run file, use this as a template for making a container. the volume is not required to run the server but handy to watch logs and put custom world folders and such. the port must be configure or the server will not be reachable.
