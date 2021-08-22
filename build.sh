#!/bin/sh

# Remove old releases
rm -rf _build/prod/rel/*

# Build the image
docker build --rm -t log_lady-build -f Dockerfile.build . --no-cache

# Run the container
docker run -it --rm --name log_lady-build -v $(pwd)/_build/prod:/opt/app/_build/prod log_lady-build
