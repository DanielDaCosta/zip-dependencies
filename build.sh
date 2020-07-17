#!/bin/bash
mkdir -p build

#Run Image
# build an image using the current directory as context, and a Dockerfile passed through stdin
docker build -t python-requirements:latest -f- . <<EOF
FROM python:3.7-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt -t /app/lib
EOF

#Run Container
docker run -d --rm --name python-requirements python-requirements

#Copy files
docker cp python-requirements:/app/lib/. ./build
