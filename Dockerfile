# Pull base image 
From tomcat:8-jre8 

# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
EXPOSE 8080
#COPY /var/lib/jenkins/workspace/maven-01/webapp/target/webapp.war /usr/local/tomcat/webapps
CMD /usr/local/tomcat/bin/startup.sh
