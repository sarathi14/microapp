FROM openjdk:8
ENV PROFILING_GROUP_NAME=${PROFILING_GROUP_NAME}
ADD target/spring-boot.jar spring-boot.jar
ADD codeguru-profiler-java-agent-standalone-1.2.2.jar codeguru-profiler-java-agent-standalone-1.2.2
ENTRYPOINT ["java", "-javaagent:/codeguru-profiler-java-agent-standalone-1.2.2.jar=profilingGroupName:${PROFILING_GROUP_NAME},region:us-east-1", "-Dspring.profiles.active=local", "-jar", "spring-boot.jar"]