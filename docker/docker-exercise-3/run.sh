#!/usr/bin/env bash
set -e
./build.sh
docker run -d -e PORT='4000' -e FILEPATH='/secret/secret-message.txt' -v $(pwd)/secret/secret-message.txt:/secret/secret-message.txt:ro -p 4000:4000 johnlawsharrison/docker-exercise-3