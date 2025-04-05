FROM openjdk:17-jdk-alpine
RUN addgroup bankgrp && adduser -S -G bankgrp bankuser
USER bankuser
WORKDIR /bankapp
COPY /target/bankauction-1.0-SNAPSHOT.jar /bankapp/bankauction-1.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/bankapp/bankauction-1.0-SNAPSHOT.jar"]


