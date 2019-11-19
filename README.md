# Docker Ubuntu for Selenoid

Build and test [Selenoid](https://github.com/aerokube/selenoid) browser images in minimal Ubuntu 18.04 (Bionic Beaver) Docker container. For instance, when developing on Mac.

## Prerequisites

- Docker Community Edition

# Build Docker image

    ./build.sh

# Run container

Parent folder must contain [selenoid-images](https://github.com/aerokube/selenoid-images) and [selenoid-container-tests](https://github.com/aerokube/selenoid-container-tests) projects

    ./startup.sh
