#!/bin/bash

# Define variables
SSH_USER="your_username"
SSH_HOST="your_server_address"
IMAGE_NAME="my-static-website"
DOCKER_REGISTRY="docker.io"  # Change if you're using a different registry
REMOTE_IMAGE_NAME="$DOCKER_REGISTRY/$SSH_USER/$IMAGE_NAME"

# Pull the latest image from the registry
docker pull "$REMOTE_IMAGE_NAME"

# SSH into the server and run commands
ssh "$SSH_USER@$SSH_HOST" << EOF
  # Stop and remove the existing container (if exists)
  docker stop "$IMAGE_NAME" || true
  docker rm "$IMAGE_NAME" || true

  # Run the new container
  docker run -d --name "$IMAGE_NAME" -p 8080:80 "$REMOTE_IMAGE_NAME"
EOF

