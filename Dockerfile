#pull base image
FROM openjdk:8

#maintainer 
MAINTAINER himanshumalviya2010@gmail.com

#expose port 8080
EXPOSE 8080

#default command
ENTRYPOINT ["java", "-jar", "hello-world-0.1.0.jar"]

#copy hello world to docker image
COPY target/hello-world-0.1.0.jar hello-world-0.1.0.jar

RUN ["/bin/bash", "-c", "echo hello"]
