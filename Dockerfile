FROM tomcat:8.0.20-jre
# ADD . /var/www/html
COPY target/webapp.war /usr/local/tomcat/webapps/webapp.war
