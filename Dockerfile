# Use OpenJDK 11 base image
FROM openjdk:11-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/sam-backend-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port (update if needed)
EXPOSE 9090

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
