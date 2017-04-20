# Usage:
# docker run -it --cap-add NET_ADMIN --net host pandrew/aircrack-ng

FROM		alpine:latest
MAINTAINER      Lucas Rival <lucas.rival@gmail.com>
ENV		VERSION=1.2_rc4-r3
RUN		apk add --no-cache aircrack-ng=$VERSION
CMD	aircrack-ng
