#!/usr/bin/env bash
set -e
GOOS=linux go build
docker build -t johnlawsharrison/docker-exercise-3 .
docker push johnlawsharrison/docker-exercise-3
go clean