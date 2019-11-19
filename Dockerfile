FROM ubuntu:18.04

RUN apt update && apt install -y \
    docker.io \
    git \
    maven \
    net-tools \
    openjdk-8-jdk \
    unzip \
    uuid-runtime \
    wget \
    && rm /usr/bin/java && ln -s /usr/lib/jvm/java-8-openjdk-amd64/bin/java /usr/bin/java \
    && rm /usr/bin/javac && ln -s /usr/lib/jvm/java-8-openjdk-amd64/bin/javac /usr/bin/javac

CMD ["/bin/bash"]

