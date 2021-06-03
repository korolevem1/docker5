FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade 
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget https://mirror.linux-ia64.org/apache/tomcat/tomcat-9/v9.0.46/bin/apache-tomcat-9.0.46.tar.gz -O /tmp/apache-tomcat-9.0.46.tar.gz
RUN cd /tmp && tar xvfz apache-tomcat-9.0.46.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.46/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run