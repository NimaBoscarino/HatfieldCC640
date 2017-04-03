#!/bin/sh
# Bunch of docker stuff

mkdir $HOME/tf_files
cp -r Months $HOME/tf_files
cp train.sh $HOME/tf_files

cd $HOME/tf_files

docker run -it -v $HOME/tf_files:/tf_files  gcr.io/tensorflow/tensorflow:latest-devel
