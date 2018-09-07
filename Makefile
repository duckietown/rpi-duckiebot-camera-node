
branch=$(shell git rev-parse --abbrev-ref HEAD)

tag=duckietown/rpi-duckiebot-camera-node:$(branch)

build:
	docker build -t $(tag) .

push:
	docker push $(tag)
