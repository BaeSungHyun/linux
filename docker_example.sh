#! /bin/bash

# Dockerfile
FROM alphine:latest # os
RUN apk add bash # install
# Until here, happens during image build
CMD ["/bin/bash"] # during runtime of container

# Build the image
docker build -t hlw_test . 
# read the Dockerfile in current directory and apply identifier hlw_test


# list of images 
docker images

# Running docker container
# 1. Create 2. Run
docker run -it hlw_test

# show currently running containers
docker ps # only running containers
# all containers
docker ps -a # with 'Exit' status 

# after container processes all terminate, Docker puts them in an exit state, 
# but it still keeps the containers. This includes the changes made to the filesystem.
# You can easily access the filesystem with:
docker export
