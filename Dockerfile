FROM debian:latest
MAINTAINER Daeseon Moon <daeseonmoon@gmail.com>

VOLUME ["/study/backend"]
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install vim git git-core g++ wget unzip nginx-full -y

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys eea14886
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get update
RUN apt-get install oracle-java8-installer -y
RUN apt-get install oracle-java8-set-default -y
RUN mkdir /tools
RUN chmod 766 /tools

WORKDIR /tools
RUN wget https://downloads.typesafe.com/typesafe-activator/1.3.6/typesafe-activator-1.3.6.zip
RUN unzip typesafe-activator-1.3.6.zip && mv activator-dist-1.3.6 activator
RUN echo "PATH=\$PATH:/tools/activator" | tee -a /etc/bash.bashrc
RUN service nginx stop
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80

CMD service nginx start
