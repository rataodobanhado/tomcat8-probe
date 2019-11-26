FROM tomcat:8

RUN echo 'alias ll="ls -lh"' >> ~/.bashrc
COPY files/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY files/manager.xml /usr/local/tomcat/conf/Catalina/localhost/manager.xml
COPY files/probe.war /usr/local/tomcat/webapps/probe.war

EXPOSE 8080