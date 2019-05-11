# Start with NVidia CUDA base image
FROM tensorflow/tensorflow:latest-gpu

MAINTAINER Shashank Solomon <s2solomo@ucsd.edu>

# Install dependent packages
RUN apt-get -y update && apt-get install -y wget

# Install useful python libraries and tools
RUN apt-get install -y vim
RUN apt-get install -y git

CMD git config --global user.email s2solomo@eng.ucsd.edu
CMD git config --global user.name solomonshashank
CMD git config --global push.default simple

CMD cd
CMD git clone https://github.com/solomonshashank/see_kube.git
CMD cd see_kube
