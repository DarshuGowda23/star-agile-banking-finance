FROM openjdk:11

# Specify the JAR file location
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Set the correct file permissions
RUN chmod +x /app.jar

# Set the entry point for the Java application
CMD ["java", "-jar", "/app.jar"]

# Optional: Expose the port (if needed for a web application)
