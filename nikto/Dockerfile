FROM		alpine:edge
MAINTAINER	Lucas Rival<lucas.rival@gmail.com>

ENV		NIKTO_VERSION=2.1.6-r1

RUN 		apk update --no-cache 
RUN		apk --no-cache add nikto=$NIKTO_VERSION

CMD ["—h"]
ENTRYPOINT ["nikto.pl"]
