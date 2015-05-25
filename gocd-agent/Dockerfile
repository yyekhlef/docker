FROM phusion/baseimage:0.9.16
MAINTAINER Youcef Yekhlef <youcef.yekhlef@zenika.com>

# Install Java.
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh
RUN apt-get update && apt-get install -y -q unzip git

RUN mkdir /etc/service/go-agent
ADD go-agent-start.sh /etc/service/go-agent/run && chmod +x /etc/service/go-agent/run

ADD http://download.go.cd/gocd-deb/go-agent-14.4.0-1356.deb /tmp/go-agent.deb

WORKDIR /tmp
RUN dpkg -i /tmp/go-agent.deb
RUN sed -i -e 's/DAEMON=Y/DAEMON=N/' /etc/default/go-agent /etc/default/go-agent

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle/

CMD ["/sbin/my_init"]

