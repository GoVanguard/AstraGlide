#!/bin/bash

docker pull mongo
docker run --name astraglide-mongo -d mongo
docker run --rm -it --link astraglide-mongo: mongo -p 8094:8094 gvit/astraglide
