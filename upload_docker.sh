#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=daoudm/api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag api $dockerpath

# Step 3:
docker push $dockerpath
