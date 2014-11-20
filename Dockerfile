FROM ubuntu:14.04

#ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install perl tar wget curl openjdk-7-jre-headless

RUN mkdir /opt/fuseki
ADD script/download-fuseki.sh /opt/fuseki/download-fuseki.sh
RUN chmod +x /opt/fuseki/download-fuseki.sh 
RUN /bin/bash /opt/fuseki/download-fuseki.sh
ADD script/start-fuseki.sh /opt/fuseki/start-fuseki.sh
RUN chmod +x /opt/fuseki/fuseki-server /opt/fuseki/s-* /opt/fuseki/start-fuseki.sh
RUN mkdir /data






RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:siss' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN echo "SSHD: ALL" >> /etc/hosts.allow

RUN apt-get  install -y language-pack-en-base

#supervisord
RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf


VOLUME ["/data"]


EXPOSE 3030 22 

CMD ["/usr/bin/supervisord"]
