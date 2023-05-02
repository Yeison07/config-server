FROM openjdk:17
EXPOSE 7878
ADD build/libs/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]