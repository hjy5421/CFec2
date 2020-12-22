FROM openjdk:8-jdk-alpine AS builder
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew build

COPY --from=builder build/libs/CFec2-*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]