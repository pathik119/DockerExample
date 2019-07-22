FROM tomcat:8.0

MAINTAINER pathik120@gmail.com

COPY /var/lib/jenkins/workspace/tomcatdeploy/target/JenkinsWar.war /usr/local/tomcat/webapps/
