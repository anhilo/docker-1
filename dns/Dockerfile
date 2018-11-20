FROM alpine:edge
MAINTAINER lucas rival


RUN apk add  --no-cache unbound
RUN apk add  --no-cache dns

ENV DNS_NAME foo.bar
ENV Local_IP 192.168.1.0
ENV NS_IP 127.0.0.1

RUN wget ftp://FTP.INTERNIC.NET/domain/named.cache -O /etc/unbound/root.hints
RUN curl https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-social/hosts -o /etc/unbound/ad.conf
#COPY entrypoint.sh .
RUN cat /etc/unbound/ad.conf | grep '^0\.0\.0\.0' | awk '{print "local-zone: \""$2"\" redirect\nlocal-data: \""$2" A 0.0.0.0\""}' > /etc/unbound/ads.conf
COPY entrypoint.sh .

#EXPOSE  53/udp
EXPOSE  53/udp

CMD ["sh","entrypoint.sh"]
