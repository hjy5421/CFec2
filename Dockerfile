FROM gradle:4.7.0-jdk8-alpine
COPY --chown=gradle:gradle . .
RUN chmod +x ./gradlew
RUN ./gradlew build
COPY build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]

#FROM gradle:6.7.1-jdk8 AS build
#COPY --chown=gradle:gradle . .
#RUN chmod +x ./gradlew
#RUN ./gradlew jibDockerBuild
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","app.jar"]
