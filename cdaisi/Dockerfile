# CDAISI 
#  

FROM ubuntu:latest
MAINTAINER lucas rival

WORKDIR /root/

#ENV 
ENV ROOTPASSWD root
RUN apt-get update && apt-get upgrade -y

# Base installation
RUN apt-get install -y git curl openssh-server p7zip-full gcc make vim nmap python3-pip

# TheHarverster installation
RUN git clone https://github.com/laramies/theHarvester.git /root/theHarvester

# DMitry installatation
#RUN curl  -s -L -o DMitry-1.2a.tar.gz https://dl.packetstormsecurity.net/UNIX/misc/DMitry-1.2a.tar.gz  && \
#	 tar vfx DMitry-1.2a.tar.gz

# DNSenum installation
RUN git clone https://github.com/fwaeytens/dnsenum.git /root/dsnenum

# John installation
RUN curl  -s -L -o /root/john-1.8.0.tar.gz www.openwall.com/john/j/john-1.8.0.tar.gz && \
	tar vfx /root/john-1.8.0.tar.gz && \
	rm /root/john-1.8.0.tar.gz

# Hashcat installation
RUN curl  -s -L -o /root/hashcat-0.50.7z http://hashcat.net/files/hashcat-0.50.7z && \
	7z x /root/hashcat-0.50.7z  && \
	rm /root/hashcat-0.50.7z

# Parsero Installation
RUN pip3 install parsero

#SSH config
RUN mkdir /var/run/sshd
RUN echo 'root:${ROOTPASSWD}' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile


#EXPOSE
EXPOSE 22

#CMD
CMD["/docker-entrypoint.sh"]
