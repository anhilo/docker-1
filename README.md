##CDAISI


## DNS
Simple unbound DNS based on Alpine. Can manage a local zone for dev test  
* DNS_NAME= domain name
* Local_IP= local domain allowed for anwser
* NS_IP= IP redirect

```
 docker run -d -e DNS_NAME=test.test -e Local_IP=172.17.0.0 -e NS_IP=127.0.0.1 rivallu/dns

```


## Hydra
Simple hydra bruteforce tool based on alpine
you can mount your wordlist directory in /root/wordlists

```
 docker run -it --rm hydra hydra -l user -P rockyou.txt IP -vV -t 4
```
