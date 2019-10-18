FROM tensorflow/tensorflow:latest-gpu

MAINTAINER Shashank Solomon <s2solomo@ucsd.edu>

# Upgrade pip
RUN pip install --upgrade pip

# Install useful python libraries and tools
RUN apt install -y vim
RUN pip install tensorflow-gpu
RUN pip install keras
