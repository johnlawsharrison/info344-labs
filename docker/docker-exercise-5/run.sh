#!/usr/bin/env bash
set -e
./build.sh
docker run -d -e PORT='4000' -e FILEPATH='/message/hooray.txt' -v $(pwd)/message/hooray.txt:/message/hooray.txt:ro -p 4000:4000 johnlawsharrison/docker-exercise-4