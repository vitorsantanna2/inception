SHELL := /bin/bash
name = inception

build:
		set -a
		cd ./srcs && source .env
		cd ./srcs && docker-compose build
		cd ./srcs && docker-compose up -d

kill:
		docker ps -a -q > file
		cat file | xargs -I {} docker stop {}
		cat file | xargs -I {} docker rm {}
		docker image ls -q > file
		cat file | xargs -I {} docker image rm {}
		rm -rf file
