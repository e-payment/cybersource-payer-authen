#!/bin/sh

#mvn clean package

PORT=9080
JAVA_OPTS=

java $JAVA_OPTS -jar target/dependency/jetty-runner.jar --port $PORT target/*.war
