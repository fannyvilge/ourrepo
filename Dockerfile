FROM centos:latest
MAINTAINER fanny

RUN yum install -y which
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
RUN yum install -y tomcat
RUN mkdir /logs
ENV NAME=fanny
ADD petclinic.war /usr/share/tomcat/webapps/petclinic.war
ENTRYPOINT tomcat start && tail -F /logs/catalina.out




