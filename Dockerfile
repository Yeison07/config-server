FROM openjdk:17 AS build
RUN apk add --no-cache gradle
COPY . /app
WORKDIR /app
RUN gradle build

FROM openjdk:17
COPY --from=build /app/build/libs/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]


