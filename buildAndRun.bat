@echo off
call mvn clean package
call docker build -t watch/amazon .
call docker rm -f amazon
call docker run -d -p 8080:8080 -p 4848:4848 --name amazon watch/amazon