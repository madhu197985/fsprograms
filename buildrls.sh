#!/bin/bash
#step1 checkout 

rm -rf hello-world-war
git clone https://github.com/madhu197985/hello-world-war.git

#step2 build
cd /home/ubuntu/hello-world-war
mvn package

#step3 release

cp /home/ubuntu/hello-world-war/target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.1.13/webapps/
sudo sh /opt/apache-tomcat-10.1.13/bin/shutdown.sh
sleep 5
sudo sh /opt/apache-tomcat-10.1.13/bin/startup.sh

