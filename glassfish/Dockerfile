FROM  java:8-jdk
ENV   JAVA_HOME         /usr/lib/jvm/java-8-openjdk-amd64
ENV   GLASSFISH_HOME    /usr/local/glassfish4/glassfish
ENV   PATH              $PATH:$JAVA_HOME/bin:$GLASSFISH_HOME/bin
ENV   DOMAIN_DIR $GLASSFISH_HOME/domains/domain1
ENV   DEPLOYMENT_DIR $DOMAIN_DIR/autodeploy/

COPY  glassfish4.zip  /tmp
COPY  backups /tmp
RUN   unzip /tmp/glassfish4.zip -d  /usr/local
RUN   unzip /tmp/domain1.zip -d ${GLASSFISH_HOME}/domains/crm

EXPOSE 4848 8080 8181
CMD ["asadmin", "start-domain","--verbose", "crm"]

