#!/bin/bash

echo "zone \"$DNS_NAME\"{" >> /etc/bind/named.conf.default-zones
echo "	type master;" >> /etc/bind/named.conf.default-zones
echo "  file \"/etc/bind/db.$DNS_NAME\"; ">> /etc/bind/named.conf.default-zones
echo "};" >> /etc/bind/named.conf.default-zones
touch /etc/bind/db.$DNS_NAME

echo ";
; BIND data file for local loopback interface
;
\$TTL	604800
@	IN	SOA	$DNS_NAME. root.$DNS_NAME. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	localhost.
*	IN	A		$NS_IP" > /etc/bind/db.$DNS_NAME
exec service bind9 start
while :
do
  echo "."
done
