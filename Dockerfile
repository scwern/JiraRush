FROM openjdk:17-jdk-slim

COPY target/JiraRush.jar ./JiraRush.jar
COPY resources ./resources
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/JiraRush.jar", "--spring.profiles.active=prod"]