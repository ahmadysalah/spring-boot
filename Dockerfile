# Use a base image with Java 17 installed
FROM adoptopenjdk:17-jdk-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build context to the container
COPY target/*.jar app.jar

# Expose the port your application is listening on (replace 8080 with your application's port if needed)
EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]
