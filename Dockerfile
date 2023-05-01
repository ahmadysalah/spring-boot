# Use a base image with OpenJDK 17 installed
FROM openjdk:17-jdk-buster

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build context to the container
COPY target/*.jar app.jar

# Expose the port your application is listening on (replace 8080 with your application's port if needed)
EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]
