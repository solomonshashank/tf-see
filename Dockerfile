FROM tensorflow/tensorflow:1.13.1-gpu

MAINTAINER Shashank Solomon <s2solomo@ucsd.edu>

# Upgrade pip
RUN pip install --upgrade pip

# Install useful python libraries and tools
RUN apt-get install -y vim
RUN apt-get install -y git

CMD cd ~
CMD git clone https://github.com/solomonshashank/see_kube.git
CMD cd see_kube
