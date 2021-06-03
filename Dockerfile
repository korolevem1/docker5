# size 169 tc 7.0  java 7.0
FROM alpine:latest
RUN apk add openjdk7    
RUN java -version

RUN mkdir /usr/local/tomcat
#https://mirror.linux-ia64.org/apache/tomcat/tomcat-7/v7.0.109/bin/apache-tomcat-7.0.109.tar.gz
RUN wget https://mirror.linux-ia64.org/apache/tomcat/tomcat-7/v7.0.109/bin/apache-tomcat-7.0.109.tar.gz -O /tmp/apache-tomcat-7.0.109.tar.gz
RUN cd /tmp && tar xvfz apache-tomcat-7.0.109.tar.gz && \
rm /tmp/apache-tomcat-7.0.109.tar.gz && \
mv -fv /tmp/apache-tomcat-7.0.109/* /usr/local/tomcat/ && \
rm -rf /usr/local/tomcat/webapps/* && \
rm -rf /usr/local/tomcat/webapps/docs/*
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
