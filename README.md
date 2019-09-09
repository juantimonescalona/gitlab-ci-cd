# TOMCAT 9
## Tomcats 9.0.24 Dockerfiles
Need to add the war/jar extending the images with this command in Dockerfile
COPY some-app/target/some-app.war /usr/local/tomcat/webapps/
### Openjdk 11 Slim
./tomcat9/Dockerfile-openjdk11slim
### Oracle Openjdk 12
./tomcat9/Dockerfile-openjdk12-oracle
### Openjdk 8
./tomcat9/Dockerfile-openjdk8
### Openjdk 8 Slim
./tomcat9/Dockerfile-openjdk8slim
