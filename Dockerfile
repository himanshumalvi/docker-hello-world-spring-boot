#pull base image
FROM openjdk:8

#maintainer 
MAINTAINER himanshumalviya2010@gmail.com

#expose port 8080
EXPOSE 8080

#default command
ENTRYPOINT ["java", "-jar", "hello-world.jar"]

#copy hello world to docker image
ADD target/hello-world.jar hello-world.jar

RUN ["/bin/bash", "-c", "echo hello"]
