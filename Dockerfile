FROM techiescamp/jre-17:1.0.0
WORKDIR /app

COPY target/*.jar ./java.jar
EXPOSE 8080

RUN ["java", "-jar", "java.jar"]
