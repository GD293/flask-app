#!/bin/bash
echo "Stopping old container..."
docker stop flask-app || true
docker rm flask-app || true

echo "Pulling latest image..."
docker pull gdefe/flask-app:latest

echo "Starting new container..."
docker run -d -p 5000:5000 --name flask-app gdefe/flask-app:latest

echo "Deployment complete ✅"
