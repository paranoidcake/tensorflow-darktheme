# tensorflow-darktheme

Dockerfile and help scripts to get a modified docker image from `tensorflow/tensorflow:latest-gpu-jupyter`, giving you a dark theme and notebook extensions

## Requirements

 - `docker`
 - `nvidia` driver if using GPU with tensorflow

## Using init.sh

Supports bash and zsh

Builds the docker image under the tag `tensorflow-darktheme`, and creates the `tfgpu` alias to run the image

Set the `TFALIAS` variable before running the command to change this alias, for example:

```
TFALIAS=anotheralias ./init.sh
```

## Manually

### Build docker image

`docker build -t <tag> https://github.com/paranoidcake/tensorflow-darktheme.git#master:docker`

### Run docker image

`docker run --gpus all -it -p 8888:8888 -v $PWD:/tf <tag>`

which will mount the current directory into the container, and run the notebook
