FROM debian:latest
MAINTAINER nst8021@hotmail.com

RUN apt-get update
RUN apt-get install -yq default-jre-headless
RUN apt-get clean
RUN mkdir /srv/mcserver
RUN mkdir /srv/serverfiles

COPY ./server.jar /srv/serverfiles/server.jar
COPY ./start.sh /srv/serverfiles/start.sh
COPY ./CheckFiles.sh /srv/serverfiles/CheckFiles.sh


ENV mem=1024M
ENV eula=false

WORKDIR /srv/mcserver
CMD ["/srv/serverfiles/start.sh"]
