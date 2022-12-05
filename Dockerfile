FROM gradle:7.6.0-jdk11-alpine AS build
COPY --chown=gradle:gradle . /app
WORKDIR /app
RUN gradle assemble

FROM amazoncorretto:18-alpine-jdk
EXPOSE 8080
RUN mkdir /app
COPY --from=build /app/build/libs/*.jar /app/micronaut-application.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/micronaut-application.jar"]