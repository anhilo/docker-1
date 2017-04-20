
#
# Dockerfile for hydra
#

FROM alpine:edge
MAINTAINER lucas rival

WORKDIR /root/

RUN apk add -U apr-dev \
  apr-util-dev \
  bash \
  build-base \
  curl \
  git \
  jq

RUN apk add -U  libidn \
  libidn-dev \
  libpq \
  libssh \
  libssh-dev \
  mariadb-dev \
  mariadb-client-libs \
  mariadb-libs \
  ncurses \
  ncurses-dev
  RUN apk add -U parallel \
    pcre \
    pcre-dev \
    postgresql-dev \
    subversion-dev \
    subversion-libs \
    && echo 'will cite' | parallel --bibtex

RUN apk add -U libressl \
  libressl-dev


RUN git clone https://github.com/vanhauser-thc/thc-hydra.git
WORKDIR /root/thc-hydra
RUN ./configure --disable-xhydra
RUN  make && make install  && cd .. \
  && rm -rf src
RUN  apk del --purge apr-dev \
          apr-util-dev \
          build-base \
          libidn-dev \
          libssh-dev \
          ncurses-dev \
          mariadb-dev \
          openssl-dev \
          pcre-dev \
          postgresql-dev \
          subversion-dev

RUN rm -rf /var/cache/apk/*

#WORKDIR /root/wordlists
COPY rockyou.txt .

#ENTRYPOINT ["./hydra"]
