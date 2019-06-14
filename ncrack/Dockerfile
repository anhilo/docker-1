FROM ubuntu:latest
MAINTAINER lucas rival


WORKDIR /root/

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git gcc make wget
RUN apt-get install -y libssl-dev libssh-dev libidn11-dev libpcre3-dev \
                libgtk2.0-dev libmysqlclient-dev libpq-dev libsvn-dev \
                firebird2.1-dev
RUN wget https://nmap.org/ncrack/dist/ncrack-0.5.tar.gz
RUN tar zfx ncrack-0.6.tar.gz
RUN mv ncrack-0.6 ncrack
WORKDIR /root/ncrack
RUN ./configure
RUN make && make install

WORKDIR /root/wordlists
COPY rockyou.txt .

#ENTRYPOINT ["./ncrack"]
