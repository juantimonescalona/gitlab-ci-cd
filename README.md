# Install Runner
```shell
/etc/bin/gitlab-ci-multi-runner register  


bash-4.4# cat config.toml 
concurrent = 1
check_interval = 0

[session_server]
  listen_address = "0.0.0.0:9080"
  advertise_address = "10.28.102.51:9080"
  session_timeout = 1800

[[runners]]
  name = "runner"
  url = "http://10.28.102.51:9080"
  token = "Qcv6HsTnkraV5SQxsDxk"
  executor = "docker"
  [runners.docker]
    tls_verify = false
    image = "docker:stable"
    privileged = false
    disable_cache = false
    volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/cache"]
    extra_hosts = ["gitlab:10.28.102.51"]
  [runners.cache]
    Insecure = false

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

# Artifactory

Credentials: admin//password
```console
docker run -d -p 8080:8080 --name artifactory -v /home/jtimon/proyectos/CLH/artifactory/data:/artifactory/data -v /home/jtimon/proyectos/CLH/artifactory/logs:/artifactory/logs -v /home/jtimon/proyectos/CLH/artifactory/backup:/artifactory/backup   mattgruter/artifactory
```
# Sonarqube

Credentials: admin//admin
```console
docker run -d --name sonarqube -p 9000:9000 sonarqube
```
