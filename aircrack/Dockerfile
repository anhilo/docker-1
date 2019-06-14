# Usage:
# docker run -it --cap-add NET_ADMIN --net host aircrack-ng

FROM		alpine:edge
MAINTAINER      Lucas Rival <lucas.rival@gmail.com>
ENV		VERSION=1.5.2-r0
RUN		apk add --no-cache aircrack-ng=$VERSION
CMD	aircrack-ng
ENTRYPOINT ["aircrack-ng"]
