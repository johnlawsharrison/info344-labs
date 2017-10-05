#!/usr/bin/env bash
set -e
GOOS=linux go build
docker build -t johnlawsharrison/docker-exercise-1 .
docker push johnlawsharrison/docker-exercise-1
go clean