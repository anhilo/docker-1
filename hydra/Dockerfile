FROM alpine:latest
MAINTAINER Lucas Rival <lucas.rival@gmail.com>

WORKDIR /root/

RUN apk update --no-cache
RUN apk add -U apr-dev \
  apr-util-dev \
  build-base \
  git \
  wget \
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

RUN apk add -U  pcre \
    pcre-dev \
    postgresql-dev \
    subversion-dev \
    subversion-libs

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
          libressl-dev \
          mariadb-dev \
          openssl-dev \
          pcre-dev \
          postgresql-dev \
          subversion-dev

RUN apk add -U parallel   && parallel --will-cite
RUN rm -rf /var/cache/apk/*

#WORKDIR /root/wordlists
RUN wget http://downloads.skullsecurity.org/passwords/rockyou.txt.bz2
RUN bzip2 -d rockyou.txt.bz2

ENTRYPOINT ["hydra"]
