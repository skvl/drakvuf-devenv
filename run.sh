#!/bin/sh

set -e

docker run -v $(pwd)/..:/home/developer/src -it work/env