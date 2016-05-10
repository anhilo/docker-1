#Ubuntu

FROM ubuntu:latest
MAINTAINER lucas rival

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y bind9

ENV DNS_NAME test.io
ENV NS_IP 172.17.0.3
ENV BIND_USER bind
COPY entrypoint.sh .

#EXPOSE  53/udp
EXPOSE  53/udp

CMD ["sh","entrypoint.sh"]
