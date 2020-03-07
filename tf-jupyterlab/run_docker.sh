#!/bin/bash

if [ -z "$1" ]
  then
    command="jupyter lab --ip 0.0.0.0 --no-browser"
else
	command="$1"
fi

docker run --gpus '"device=1"' -u $(id -u):$(id -g) \
	       -v /home/$(whoami):/home/$(whoami) \
		   #-v /home/$(whoami)/.keras:/tmp/.keras \ # if you dont want to mount passwd
		   -v /etc/passwd:/etc/passwd:ro \
		   -v /etc/group:/etc/group:ro \
		   -e TF_FORCE_GPU_ALLOW_GROWTH=true \
		   -w /home/$(whoami)/ --rm -it \
		   -p 8888:8888 \
			IMAGE:TAG $command
