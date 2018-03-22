#!/usr/bin/env bash

# Docker
echo -e "-- Starting Docker Containers  --\n"
cd /vagrant/jenkins
docker-compose up -d
cd /vagrant/dev
docker-compose up -d