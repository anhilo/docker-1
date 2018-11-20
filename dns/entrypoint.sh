#!/bin/bash
echo """server:
statistics-interval: 0
extended-statistics: yes
statistics-cumulative: yes
verbosity: 3
interface: 0.0.0.0
port: 53
do-ip4: yes
do-ip6: no
do-udp: yes
do-tcp: no
access-control: 127.0.0.0/8 allow ## j'autorise mon serveur
access-control: ${Local_IP}/24 allow ## j'autorise le réseau établie avec mon OpenVPN
access-control: 0.0.0.0/0 refuse ## j'interdis tout le reste de l'Internet !
#auto-trust-anchor-file: \"/etc/unbound/root.key\"
root-hints: \"/etc/unbound/root.hints\"
hide-identity: yes
hide-version: yes
harden-glue: yes
harden-dnssec-stripped: yes
use-caps-for-id: yes
cache-min-ttl: 3600
cache-max-ttl: 86400
prefetch: yes
num-threads: 6
msg-cache-slabs: 16
rrset-cache-slabs: 16
infra-cache-slabs: 16
key-cache-slabs: 16
rrset-cache-size: 256m
msg-cache-size: 128m
so-rcvbuf: 1m
unwanted-reply-threshold: 10000
do-not-query-localhost: yes
val-clean-additional: yes
##je bloque cetaines pubs
include: /etc/unbound/ads.conf
use-syslog: yes
logfile: /var/log/unbound.log
harden-dnssec-stripped: yes
cache-min-ttl: 3600
cache-max-ttl: 86400
prefetch: yes
prefetch-key: yes
local-zone: \"${DNS_NAME}\" redirect
local-data: \"${DNS_NAME} 3600 IN A ${NS_IP}\"""" > /etc/unbound/unbound.conf

exec /usr/sbin/unbound -c /etc/unbound/unbound.conf -d -v
