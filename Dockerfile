FROM tomcat:latest
# ADD . /var/www/html
COPY target/webapp.war /usr/local/tomcat/webapps/webapp.war
