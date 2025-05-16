#!/bin/bash

echo "Pulling $GIT_SOURCE"
git checkout $GIT_SOURCE /usr/src/app

echo "Chmod +x ..."
chmod +x initialize.sh
chmod +x run.sh

echo "Initialising..."
./initialize.sh

echo "Running..."
./run.sh
