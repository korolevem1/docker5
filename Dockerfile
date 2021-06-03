#FROM ubuntu:latest
#RUN apt-get -y update && apt-get -y upgrade 
#RUN apt-get -y install openjdk-8-jdk wget
#RUN java -version

#RUN mkdir /usr/local/tomcat
#RUN wget https://mirror.linux-ia64.org/apache/tomcat/tomcat-9/v9.0.46/bin/apache-tomcat-9.0.46.tar.gz -O /tmp/apache-tomcat-9.0.46.tar.gz
#RUN cd /tmp && tar xvfz apache-tomcat-9.0.46.tar.gz
#RUN cp -Rv /tmp/apache-tomcat-9.0.46/* /usr/local/tomcat/
#EXPOSE 8080
#sCMD /usr/local/tomcat/bin/catalina.sh run



FROM alpine:latest
RUN apk add openjdk7
RUN java -version

RUN mkdir /usr/local/tomcat
RUN wget https://mirror.linux-ia64.org/apache/tomcat/tomcat-7/v7.0.109/bin/apache-tomcat-7.0.109.tar.gz -O /tmp/apache-tomcat-7.0.109.tar.gz
RUN cd /tmp && tar xvfz apache-tomcat-7.0.109.tar.gz && \
rm -rf /tmp/apache-tomcat-7.0.109.tar.gz && \
mv -fv /tmp/apache-tomcat-7.0.109/* /usr/local/tomcat/ && \
rm -rf /tmp/apache-tomcat-7.0.109/* && \
rm -rf /usr/local/tomcat/webapps/* && \
rm -rf /usr/local/tomcat/webapps/docs/*
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
