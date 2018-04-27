FROM python:2.7
MAINTAINER Lucas Rival <lucas.rival@gmail.com>

ENV VERSION 1.2

RUN git clone -v  https://github.com/sqlmapproject/sqlmap.git \
	&& cd sqlmap \
	&& git checkout tags/${VERSION}

WORKDIR /sqlmap
VOLUME /data
CMD ["—h"]
ENTRYPOINT ["./sqlmap.py"]
