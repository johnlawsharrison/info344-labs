#!/usr/bin/env bash
set -e
GOOS=linux go build
docker build -t johnlawsharrison/docker-exercise-4 .
docker push johnlawsharrison/docker-exercise-4
go clean