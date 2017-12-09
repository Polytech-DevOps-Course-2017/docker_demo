FROM ubuntu:17.10

MAINTAINER Monastyrev Vitaliy <vit3495@gmail.com>

RUN apt-get update

# Install java-8

RUN apt-get install --yes openjdk-8-jdk
RUN apt-get install --yes openjdk-8-jre

# Install maven

RUN apt-get install --yes maven

# Copy project

COPY vaadinsimpleexample /

# Start jetty server

COPY start_server.sh /
CMD ["/bin/bash", "start_server.sh"]

EXPOSE 8080