```console
# Build example
$ docker build --tag jtimon/tomcat9-openjdk11slim:lastest --file Dockerfile-openjdk11slim .
...
# Push to dockerhub
$ docker push jtimon/tomcat9-openjdk11slim:lastest
```

```console
# we are extending everything from tomcat:9.0 image ...
FROM jtimon/tomcat9-openjdk11slim:lastest
MAINTAINER jtimon@atsistemas.com
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY some-app/target/some-app.war /usr/local/tomcat/webapps/
```
