#pull base image
FROM openjdk:8

#maintainer 
MAINTAINER himanshumalviya2010@gmail.com

#expose port 8080
EXPOSE 8080
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} hello-world.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/hello-world.jar"]