FROM amazoncorretto:18-alpine-jdk
EXPOSE 8080
RUN mkdir /app
COPY build/libs/atomicsamurai-0.1-all.jar /app/
CMD ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/atomicsamurai-0.1-all.jar"]