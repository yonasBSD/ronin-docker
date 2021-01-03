LANG?=en_US.UTF-8
TZ?=UTC

all: build run

build: Dockerfile
	docker build --build-arg LANG=$(LANG) --build-arg TZ=$(TZ) -t ronin .

run: 
	docker run --mount type=bind,source="$$HOME",target=/home/ronin -it ronin

.PHONY: all build run