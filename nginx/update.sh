#!/usr/bin/env bash

docker image pull nginx:stable-alpine
docker build -t reverse-proxy-nginx .
docker-compose up -d
docker image prune -f
