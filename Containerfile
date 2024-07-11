# import JDK 17 alpine variant
FROM openjdk:17-alpine

# set an argument to jar location
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /app 

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080

# java -jar /opt/app/app.jar
CMD ["java", "-jar", "app.jar"]