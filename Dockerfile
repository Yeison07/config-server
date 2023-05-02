FROM openjdk:17
COPY ./build/libs/config-service-0.0.1-SNAPSHOT.jar config_app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/config_app.jar"]