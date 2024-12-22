FROM openjdk:11
ARG JAR_FILE=target/banking-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
# Set the correct file permissions
RUN chmod +x /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
EXPOSE 8085
