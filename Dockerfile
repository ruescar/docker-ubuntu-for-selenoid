FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

ENV PATH=$PATH:/usr/local/go/bin

RUN apt update && apt install -y \
    docker.io \
    git \
    jq \
    maven \
    net-tools \
    openjdk-8-jdk \
    unzip \
    uuid-runtime \
    wget \
    && rm /usr/bin/java && ln -s /usr/lib/jvm/java-8-openjdk-amd64/bin/java /usr/bin/java \
    && rm /usr/bin/javac && ln -s /usr/lib/jvm/java-8-openjdk-amd64/bin/javac /usr/bin/javac \
    && wget https://golang.org/dl/go1.15.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf go1.15.linux-amd64.tar.gz \
    && rm go1.15.linux-amd64.tar.gz

CMD ["/bin/bash"]

