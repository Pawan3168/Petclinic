FROM openjdk:8
#EXPOSE 5000
#ADD target/petclinic.war petclinic.war
#ENTRYPOINT ["java","-jar","/petclinic.war"]


#FROM amazoncorretto:17.0.8-alpine3.18
    # Expose the port on which the application will run
EXPOSE 8080

# Set the application directory path
ENV APP_HOME /usr/src/app

# Copy the JAR file from the target directory to the container
COPY target/petclinic-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

# Set the working directory
WORKDIR $APP_HOME

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
