FROM tensorflow/tensorflow:2.5.0-gpu-jupyter

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y \
	vim \
	python3-pip \
	python3-tk \
	graphviz    

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install \
	pandas \
    matplotlib \
    seaborn \
    pydot \
	ipython \
	pytest \
	pytest-cov \
	jupyterlab

RUN python3 -m pip install tensorflow-datasets

COPY bash.bashrc /etc/
