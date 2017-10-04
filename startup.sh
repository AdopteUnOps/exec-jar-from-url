#!/usr/bin/env bash
set -x
set -e

echo "Downloading ${SERVICE_JAR_URL}"
curl ${SERVICE_JAR_URL} > /tmp/application.jar

java -jar /tmp/application.jar ${SERVICE_JAVA_ARGUMENTS}
