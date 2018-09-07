FROM tomcat:8.0
LABEL maintainer="kenvilar@gmail.com"

COPY **/*.war /usr/local/tomcat/webapps

EXPOSE 8080
 
CMD ["catalina.sh", "run"]
