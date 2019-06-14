FROM		alpine:edge
MAINTAINER	Lucas Rival<lucas.rival@gmail.com>

RUN apk update --no-cache
RUN apk add --no-cache git
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ yara
RUN git clone https://github.com/Yara-Rules/rules.git  

WORKDIR rules

ENTRYPOINT ["yara"]

