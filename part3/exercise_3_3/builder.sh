#!/bin/sh

# Check if the required arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <GitHub repository> <Docker Hub repository>"
    exit 1
fi

# Parse the arguments
github_repo="https://github.com/$1"
docker_repo="$2"

# Clone the GitHub repository
git clone "$github_repo" temp_repo
cd temp_repo

# Build the Docker image from the Dockerfile in the root directory
docker build -t temp_image .

# Log in to Docker Hub (you may need to replace 'your_docker_username' with your Docker Hub username)
docker login

# Tag the Docker image with the Docker Hub repository name
docker tag temp_image "$docker_repo"

# Push the Docker image to Docker Hub
docker push "$docker_repo"

# Clean up temporary files
cd ..
rm -rf temp_repo

echo "Docker image is built and published to $docker_repo"