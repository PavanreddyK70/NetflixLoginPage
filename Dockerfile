FROM tomcat:9.0.73-jdk8-temurin

# Change Tomcat's port from 8080 to 8081
RUN sed -i 's/port="8080"/port="8081"/' /usr/local/tomcat/conf/server.xml

# Copy your WAR file into Tomcat
COPY target/NETFLIX-1.2.2.war /usr/local/tomcat/webapps/NETFLIX.war

# Expose the new port
EXPOSE 8081

CMD ["catalina.sh", "run"]

