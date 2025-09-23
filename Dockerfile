FROM openjdk:21-jdk-slim
WORKDIR /app

# Copy your built JAR file
COPY app.jar app.jar

# Expose app port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

