#!/usr/bin/env bash

docker build -t py-func .
docker run --rm -p 8080:8080 py-func
