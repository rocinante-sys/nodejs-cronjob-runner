#!/bin/bash

echo "Pulling $GIT_SOURCE"
git clone $GIT_SOURCE .

echo "Chmod +x ..."
chmod +x initialize.sh
chmod +x run.sh

echo "Initialising..."
./initialize.sh

echo "Running..."
./run.sh
