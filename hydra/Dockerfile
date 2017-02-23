FROM ubuntu:latest
MAINTAINER lucas rival


WORKDIR /root/

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y  gcc make git
RUN apt-get install -y libssl-dev libssh-dev libidn11-dev libpcre3-dev \
                libmysqlclient-dev libpq-dev libsvn-dev \
                firebird2.1-dev
RUN git clone https://github.com/vanhauser-thc/thc-hydra
WORKDIR /root/thc-hydra
RUN ./configure --disable-xhydra -DWITH_SSH1=On
RUN make && make install

#WORKDIR /root/wordlists
COPY rockyou.txt .

#ENTRYPOINT ["./hydra"]
