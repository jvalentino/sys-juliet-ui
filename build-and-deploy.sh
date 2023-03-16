#!/bin/sh
npm run build
./build-docker.sh
./deploy.sh
