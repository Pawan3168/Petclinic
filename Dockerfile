FROM openjdk:8
#EXPOSE 5000
#ADD target/petclinic.war petclinic.war
#ENTRYPOINT ["java","-jar","/petclinic.war"]


#FROM amazoncorretto:17.0.8-alpine3.18
    
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY target/*.jar $APP_HOME/petclinic.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "petclinic.jar"]
