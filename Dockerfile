FROM java:8

# Add Author info
LABEL maintainer="f.softwareengineer@gmail.com"

# Add a volume to /tmp
#VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
#ARG JAR_FILE=build/libs/CFec2-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD build/libs/cf-0.0.1-SNAPSHOT.jar climbingfriends.jar

# Run the jar file
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/climbingfriedns.jar"]
ENTRYPOINT ["java","-jar","/climbingfriedns.jar"]

