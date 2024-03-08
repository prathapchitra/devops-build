#!/bin/bash

# Define variables
IMAGE_NAME="my-static-website"
DOCKERFILE="Dockerfile"
DOCKER_BUILD_CONTEXT="."

# Build the Docker image
docker build -t "$IMAGE_NAME" -f "$DOCKERFILE" "$DOCKER_BUILD_CONTEXT"

