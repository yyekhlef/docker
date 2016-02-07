FROM java:8
MAINTAINER Youcef Yekhlef <youcef.yekhlef@zenika.com>
WORKDIR /tmp
RUN wget https://services.gradle.org/distributions/gradle-2.10-bin.zip -P /tmp && \
 unzip /tmp/gradle-2.10-bin.zip -d /opt/gradle/

ENV GRADLE_HOME /opt/gradle/gradle-2.10
ENV PATH $PATH:$GRADLE_HOME/bin

CMD ["gradle", "-version"]
