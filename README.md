# tensorflow-darktheme

Dockerfile and help scripts to get a modified docker image from tensorflow/tensorflow:latest-gpu-jupyter

## Build docker image

`docker build -t <tag> https://github.com/paranoidcake/tensorflow-darktheme.git:docker`

## Run docker image

`docker run --gpus all -it -p 8888:8888 -v $PWD:/tf <tag>`

which will mount the current directory into the container, and run the notebook
