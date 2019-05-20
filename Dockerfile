FROM tensorflow/tensorflow:latest-gpu

MAINTAINER Shashank Solomon <s2solomo@ucsd.edu>

# Upgrade pip
RUN pip install --upgrade pip

# Install useful python libraries and tools
RUN apt install -y vim git cron
RUN pip install tensorflow-gpu

CMD cd /root/ && git clone https://github.com/solomonshashank/see_kube.git && cd see_kube
