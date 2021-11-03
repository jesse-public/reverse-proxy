#!/usr/bin/env bash

docker network create \
--driver=bridge \
--internal \
--ip-range=172.172.0.0/24 \
--subnet=172.172.0.0/24 \
--gateway=172.172.0.1 \
reverse-proxy-backend

