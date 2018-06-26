FROM		alpine:latest
MAINTAINER	Lucas Rival <lucas.rival@gmail.com>

ENV		JOHN_VERSION 1.8.0-r8
RUN		mkdir -p /usr/share/john 
RUN 		apk update --no-cache
RUN		apk --no-cache  add john=${JOHN_VERSION}

ENTRYPOINT	["john"]
