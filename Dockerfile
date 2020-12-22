FROM debian:buster-slim

ARG JAVA_VER=15.0.1
ARG JAVA_DIR=opt
ARG DEBIAN_FRONTEND=noninteractive

ENV JAVA_HOME="/${JAVA_DIR}/jdk-${JAVA_VER}" PATH="/${JAVA_DIR}/jdk-${JAVA_VER}/bin:$PATH"

WORKDIR /${JAVA_DIR}
ADD https://download.java.net/java/GA/jdk15.0.1/51f4f36ad4ef43e39d0dfdbaf6549e32/9/GPL/openjdk-15.0.1_linux-x64_bin.tar.gz .
RUN tar xzf openjdk-${JAVA_VER}_linux-x64_bin.tar.gz
RUN rm openjdk-${JAVA_VER}_linux-x64_bin.tar.gz
WORKDIR /root
