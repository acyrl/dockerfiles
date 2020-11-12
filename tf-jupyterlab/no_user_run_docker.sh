#!/bin/bash

if [ -z "$1" ]
  then
    command="jupyter lab --ip 0.0.0.0 --no-browser"
else
	command="$1"
fi

docker run --gpus '"device=1"' -u $(id -u):$(id -g) \
		   -w /scratch/ \
	       -v /scratch:/scratch \
		   -e TF_FORCE_GPU_ALLOW_GROWTH=true \
		   --rm -it \
		   -p 8888:8888 \
			workbench/tf-lab:2.1 $command

#		   -w /home/$(whoami)/ \
#	       -v /home/$(whoami):/home/$(whoami) \

# -v /home/$(whoami)/.keras:/tmp/.keras
