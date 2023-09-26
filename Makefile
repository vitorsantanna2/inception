SHELL := /bin/bash
name = inception

build:
		set -a
		cd ./srcs && source .env
		cd ./srcs && docker compose build
		cd ./srcs && docker compose up

all:
	build