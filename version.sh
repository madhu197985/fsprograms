#!/bin/bash
rm -rf hello-world-war
git clone https://github.com/madhu197985/hello-world-war.git
echo "previous version"
read pv
echo "newer version"
read nv
cd /home/ubuntu/hello-world-war
cat pom.xml
sed -i '6s/$pv/$nv/' pom.xml
echo "$ov"
echo "$nv"
cat pom.xml
mvn deploy

cd
cd /opt/apache-tomcat-10.1.13/webapps
curl -u madhugowdaks997@gmail.com:cmVmdGtuOjAxOjE3MjgxMzUwODM6am1hekhQRTBCWkdjYzZnY2ZzS01FNklueUt1 -O https://devopsji.jfrog.io/artifactory/libs-release-local/com/efsavage/hello-world-war/$pv.0.0/hello-world-war-$nv.0.0.war
sudo sh /opt/apache-tomcat-10.1.13/bin/shutdown.sh
sudo sh /opt/apache-tomcat-10.1.13/bin/startup.sh
