FROM		alpine:edge
MAINTAINER	Lucas Rival <lucas.rival@gmail.com>

ENV		JOHN_VERSION=1.9.0-r0
RUN		mkdir -p /usr/share/john 
RUN 		apk update --no-cache
RUN		apk --no-cache  add john=${JOHN_VERSION}

ENTRYPOINT	["john"]
