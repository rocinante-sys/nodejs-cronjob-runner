#!/bin/bash

git --work-tree=/usr/src/app checkout $GIT_SOURCE
./initialize.sh
./run.sh
