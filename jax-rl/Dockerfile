#FROM nvidia/cudagl:10.2-runtime-ubuntu18.04
#FROM tensorflow/tensorflow:2.4.1-gpu-jupyter
FROM tf/tfgl:2.4.1


ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y \
	vim \
	python3-pip \
	python3-tk \
	graphviz \
	git

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

RUN pip install --upgrade pip
RUN pip install --upgrade jax jaxlib==0.1.65+cuda110 \
    -f https://storage.googleapis.com/jax-releases/jax_releases.html

RUN pip install git+https://github.com/deepmind/dm-haiku

RUN apt update
RUN apt-get install -y --fix-missing libglu1-mesa-dev libgl1-mesa-dev libosmesa6-dev xvfb ffmpeg curl patchelf libglfw3 libglfw3-dev cmake zlib1g zlib1g-dev swig python-opengl
RUN pip install rlax optax gym gym[atari] gym[classic_control] gym[box2d] pyvirtualdisplay
RUN pip install PyOpenGL PyOpenGL-accelerate
RUN apt-get install -y x11-utils
RUN apt-get install mesa-utils


COPY bash.bashrc /etc/
