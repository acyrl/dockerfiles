FROM tensorflow/tensorflow:2.3.1-gpu-jupyter

ARG DEBIAN_FRONTEND=noninteractive

RUN apt clean
RUN apt autoclean
RUN apt update
RUN apt install -y \
	vim \
	python3-pip \
	python3-tk \
	graphviz \
    sox

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install \
	pandas \
    matplotlib \
    seaborn \
    pydot \
	ipython \
	pytest \
	pytest-cov \
	jupyterlab \
    surfboard \
    sox


COPY bash.bashrc /etc/
