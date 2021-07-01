#!/bin/bash

if [ -z "$1" ]
  then
    command='jupyter lab --ip 0.0.0.0 --no-browser'
else
	command="$1"
fi

docker run --gpus '"device=1"' -u $(id -u):$(id -g) \
           --privileged \
		   -w /home/$(whoami)/ \
	       -v /home/$(whoami):/home/$(whoami) \
	       -v /scratch:/scratch \
		   -v /etc/passwd:/etc/passwd:ro \
		   -v /etc/group:/etc/group:ro \
           -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
           -e DISPLAY=$DISPLAY \
		   --rm -it \
		   -p 8888:8888 \
		   --name jax-rl-gl \
			workbench/jax-rl-gl:latest $command


# -v /home/$(whoami)/.keras:/tmp/.keras
# 
