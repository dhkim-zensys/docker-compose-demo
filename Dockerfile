FROM maven:3-jdk-8
MAINTAINER Alper Kanat <me@alperkan.at>

COPY . /source
WORKDIR /source
RUN mkdir /app && \
    mvn clean package && \
    cp target/demo-*.jar /app/demo.jar
    wget http://ncloud-pinpoint.com/agent.tar.gz
    tar -xvf agent.tar.gz

EXPOSE 8080
CMD ["java", "-jar", "/app/demo.jar"]
