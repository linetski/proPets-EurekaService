FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
ENV EUREKA_USER_PASSWORD=ko28
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]