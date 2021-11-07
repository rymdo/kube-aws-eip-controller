.PHONY: clean build run

default: clean build

clean:
	rm -rf dist

build:
	CONTAINER_NAME=$(shell basename $(CURDIR)) goreleaser release --snapshot --rm-dist
	docker images $(shell basename $(CURDIR))

run: clean build
	docker run --rm $(shell basename $(CURDIR)):latest-amd64