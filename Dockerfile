FROM ubuntu:latest
LABEL maintainer "Ernesto Cruz Olivera (ernesto@ecruzolivera.tech)"

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    build-essential cmake ninja-build clang cppcheck doxygen graphviz
RUN rm -rf /var/lib/apt/lists/* && \
    apt-get clean
 
