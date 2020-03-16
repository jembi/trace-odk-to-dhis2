FROM tomcat:8.5-jdk11-openjdk

COPY ODKAggregate/ODKAggregate.war /usr/local/tomcat/webapps/
