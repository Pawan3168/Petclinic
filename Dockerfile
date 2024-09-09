FROM openjdk:8
#EXPOSE 5000
#ADD target/petclinic.war petclinic.war
#ENTRYPOINT ["java","-jar","/petclinic.war"]


#FROM amazoncorretto:17.0.8-alpine3.18
    
# Set the environment variable for the application directory
ENV APP_HOME /usr/src/app

# Create the application directory inside the container
RUN mkdir -p $APP_HOME

# Copy the JAR file into the application directory inside the container
COPY target/*.jar $APP_HOME/app.jar

# Set the working directory to the application directory
WORKDIR $APP_HOME

# Expose the application port (this should be the port your application listens to)
EXPOSE 8080

# Command to run the JAR file
CMD ["java", "-jar", "app.jar"]
