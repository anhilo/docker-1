FROM		alpine:edge
MAINTAINER	Lucas Rival<lucas.rival@gmail.com>


RUN 		apk update --no-cache
RUN		apk add --no-cache clamav

RUN		freshclam
ENTRYPOINT ["clamscan"]
