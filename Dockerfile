FROM maven:3-jdk-8
MAINTAINER Alper Kanat <me@alperkan.at>

COPY . /source
WORKDIR /source
RUN mkdir /app && \
    mvn clean package && \
    cp target/demo-*.jar /app/demo.jar && \
    cp pinpoint-bootstrap.jar /app/pinpoint-bootstrap.jar && \
    cp pinpoint.license /app/pinpoint.license

EXPOSE 8080
CMD ["java", "-jar", "/app/demo.jar"]
