# Pull base image 
From tomcat:8-jre8 

# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
CMD ["cd /var/lib/jenkins/workspace/maven-pipeline/"]
ADD /webapps/target/myapp.war /usr/local/tomcat/webapps/myapp.war
EXPOSE 8080
#COPY /var/lib/jenkins/workspace/maven-01/webapp/target/webapp.war /usr/local/tomcat/webapps
CMD /usr/local/tomcat/bin/catalina.sh run
