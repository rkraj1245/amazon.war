#!/bin/sh
mvn clean package && docker build -t watch/amazon .
docker rm -f amazon || true && docker run -d -p 8080:8080 -p 4848:4848 --name amazon watch/amazon