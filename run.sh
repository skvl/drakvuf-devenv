#!/bin/sh

set -e

docker run -v $(pwd)/..:/home/$(id -nu)/src -it work/env
