#FROM nvidia/cudagl:10.2-runtime-ubuntu18.04
FROM tensorflow/tensorflow:2.5.0-gpu-jupyter
#FROM tf/tfgl:2.4.1


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

#RUN pip install --upgrade pip
RUN python3 -m pip install --upgrade "jax[cuda111]" \
     -f https://storage.googleapis.com/jax-releases/jax_releases.html
# RUN pip install --upgrade jax jaxlib==0.1.65+cuda110 \
#    -f https://storage.googleapis.com/jax-releases/jax_releases.html

RUN python3 -m pip install git+https://github.com/deepmind/dm-haiku

RUN python3 -m pip install --upgrade tensorflow-probability
RUN python3 -m pip install rlax optax distrax 
RUN python3 -m pip install flax
RUN python3 -m pip install tensorflow-datasets
#RUN python3 -m pip install jedi
RUN python3 -m pip install ipympl

COPY bash.bashrc /etc/
