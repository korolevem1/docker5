apt update
docker stop $(docker ps -a -q)
docker container rm $(docker ps -a -q) -f
docker image rm $(docker images -a -q) -f
cd /root/docker5/
git pull https://github.com/korolevem1/docker5.git
docker build -t alpinetom .
docker images
docker run -d -p 8080:8080 -t alpinetom
docker ps -a
RUN /opt/tomcat/bin/catalina.sh run
apt install nmap
nmap 127.0.0.1