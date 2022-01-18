FROM adoptopenjdk/openjdk11:latest 
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-Dspring.profiles.active=qa", "-jar", "/app.jar"]
