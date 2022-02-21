#!/bin/bash

docker build . --no-cache -t latex_build
./start_latex_docker.sh
