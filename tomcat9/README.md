```console
# we are extending everything from tomcat:8.0 image ...
FROM tomcat:9.24
MAINTAINER jtimon@atsistemas.com
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY some-app/target/some-app.war /usr/local/tomcat/webapps/
```