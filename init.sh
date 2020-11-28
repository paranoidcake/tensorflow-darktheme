#!/bin/bash
docker build -t tensorflow-darktheme https://github.com/paranoidcake/tensorflow-darktheme.git#master:docker

: ${TFALIAS:="tfgpu"}

runcmd='docker run -u $(id -u):$(id -g) --gpus all -it -p 8888:8888 -p 6006:6006 -v $(pwd):/tf tensorflow-darktheme'

case "$SHELL" in
    *zsh*)
        echo "" >> $HOME/.zshrc
        echo "# Lines added by tensorflow-darktheme #" >> $HOME/.zshrc
        echo "alias $TFALIAS='$runcmd'" >> $HOME/.zshrc
        echo "# ----------------------------------- #" >> $HOME/.zshrc
        ;;
    *bash*)
        echo "" >> $HOME/.bashrc
        echo "# Lines added by tensorflow-darktheme #" >> $HOME/.bashrc
        echo "alias $TFALIAS='$runcmd'" >> $HOME/.bashrc
        echo "# ----------------------------------- #" >> $HOME/.bashrc
        ;;
esac
