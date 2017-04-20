FROM		alpine:edge
MAINTAINER	Lucas Rival <lucas.rival@gmail.com>

ENV		JOHN_VERSION 1.8.0-r6
RUN		mkdir -p /usr/share/john 
RUN		apk --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing add john=${JOHN_VERSION}

ENTRYPOINT	["john"]
