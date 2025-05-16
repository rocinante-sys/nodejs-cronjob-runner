#!/bin/bash

echo "Pulling $GIT_SOURCE"
git checkout $GIT_SOURCE /usr/src/app

echo "Initialising..."
./initialize.sh

echo "Running..."
./run.sh
