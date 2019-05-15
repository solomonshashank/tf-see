# Start with NVidia CUDA base image
FROM nvidia/cuda:10.0-base

MAINTAINER Shashank Solomon <s2solomo@ucsd.edu>

# Install dependent packages
RUN apt-get -y update && apt-get install -y wget nano python-pip libboost-all-dev python-numpy build-essential python-dev python-setuptools libboost-python-dev libboost-thread-dev

# Upgrade pip
RUN pip install --upgrade pip

# Install useful python libraries and tools
RUN pip install pandas matplotlib sklearn scipy codegen pyimage pydot
RUN apt-get install -y vim python-tk graphviz sudo
RUN apt-get install -y git
RUN pip install sympy==1.2

# Install tensorflow-gpu
RUN pip install --upgrade tensorflow-gpu

CMD git config --global user.email s2solomo@eng.ucsd.edu
CMD git config --global user.name solomonshashank
CMD git config --global push.default simple

CMD cd ~
CMD git clone https://github.com/solomonshashank/see_kube.git
CMD cd see_kube
