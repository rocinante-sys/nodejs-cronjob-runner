#!/bin/bash

if [ -f ./run.sh ]; then
   ./run.sh
fi

echo "Pulling $GIT_SOURCE"
git clone $GIT_SOURCE source
mv ./source/* .
mv ./source/.* .
rmdir source

echo "Chmod +x ..."
chmod +x initialize.sh
chmod +x run.sh

echo "Initialising..."
./initialize.sh
