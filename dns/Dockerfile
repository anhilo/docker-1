FROM alpine:edge
MAINTAINER lucas rival


RUN apk add  --no-cache unbound

ENV DNS_NAME foo.bar
ENV Local_IP 192.168.1.0
ENV NS_IP 127.0.0.1

RUN wget ftp://FTP.INTERNIC.NET/domain/named.cache -O /etc/unbound/root.hints
COPY entrypoint.sh .

#EXPOSE  53/udp
EXPOSE  53/udp

CMD ["sh","entrypoint.sh"]
