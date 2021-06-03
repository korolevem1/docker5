# size 169 tc 6.0  java 6.0
FROM alpine:latest
RUN apk add openjdk7
RUN java -version

RUN mkdir /usr/local/tomcat
RUN wget https://archive.apache.org/dist/tomcat/tomcat-6/v6.0.9/src/apache-tomcat-6.0.9-src.tar.gz -O /tmp/apache-tomcat-6.0.9-src.tar.gz
RUN cd /tmp && tar xvfz apache-tomcat-6.0.9-src.tar.gz && \
rm /tmp/apache-tomcat-6.0.9-src.tar.gz && \
mv -fv /tmp/apache-tomcat-6.0.9-src/* /usr/local/tomcat/ 
#&& \
#rm -rf /usr/local/tomcat/webapps/* && \
#\rm -rf /usr/local/tomcat/webapps/docs/*
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
