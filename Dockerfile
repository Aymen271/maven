#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN  mvn web3j:generate-sources
RUN  mvn install
RUN  mvn exec:java
EXPOSE 8080

