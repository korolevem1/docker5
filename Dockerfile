FROM tomcat:latest

#  install packages
RUN apt-get update && apt-get install -y \
default-jdk 

WORKDIR /usr/local/tomcat/webapps/
# need make 1 - start tomcat  after tomcat builder 2 -make share folder fow war 3 - optimize tomcat may be install ubbunut + tomcat from source code and may be default-jdk
