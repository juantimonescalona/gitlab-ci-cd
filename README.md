# Install Runner
```shell
/etc/bin/gitlab-ci-multi-runner register  
```
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

# Example deploy with Maven Pipeline
https://docs.gitlab.com/ee/ci/examples/artifactory_and_gitlab/index.html

# How to deploy a war in remote tomcat
http://localhost:8080/manager/text/deploy?war=file:/path/to/bar.war

https://tomcat.apache.org/tomcat-9.0-doc/manager-howto.html#Deploy_A_New_Application_Archive_(WAR)_Remotely

https://docs.gitlab.com/ee/ci/examples/artifactory_and_gitlab/

https://docs.gitlab.com/ee/ci/examples/

https://medium.com/@speedforcerun/sonarqube-with-gitlab-ci-setup-stepbystep-java-maven-version-7e131dce0bb1
