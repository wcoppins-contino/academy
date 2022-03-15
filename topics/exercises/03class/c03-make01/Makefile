.DEFAULT_GOAL := all
DOCKER_USERNAME ?= wcdockercontino
REPO_NAME ?= devopsacad
COMMIT_SHA ?= $(shell git rev-parse --short HEAD)
IMAGE_NAME ?= make01
AUTHOR_NAME ?= Will Coppins
PORT ?= 8080

.PHONY: all
all: BUILD PUSH CLEANUP RUN

.PHONY: BUILD
BUILD:
	@echo "Building www Index..."
	@echo "<h1>**This image was created by ${AUTHOR_NAME}, based on the ${COMMIT_SHA}**</h1>" > index.html
	@echo "Building Image..."
	docker build -t ${IMAGE_NAME}:'${COMMIT_SHA}' .

.PHONY: PUSH
PUSH:
	@echo "Tagging container..."
	docker tag ${IMAGE_NAME}:${COMMIT_SHA} ${DOCKER_USERNAME}/${REPO_NAME}:${IMAGE_NAME}-${COMMIT_SHA}
	@echo "Pushing image to Dockerhub..."
	docker push ${DOCKER_USERNAME}/${REPO_NAME}:${IMAGE_NAME}-${COMMIT_SHA}

.PHONY: CLEANUP
CLEANUP:
	@echo "Running Cleanup Steps"
	@echo "1. Cleanup www Index file..."
	@del index.html

.PHONY: RUN
RUN:
	@echo "Running Container ${IMAGE_NAME}:${COMMIT_SHA}"
	@docker run -d -p ${PORT}:80 -it ${IMAGE_NAME}:${COMMIT_SHA}
	curl http://localhost:$(PORT)