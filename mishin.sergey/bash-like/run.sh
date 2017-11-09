#!/bin/bash

docker run -d --net skynet --name mongo qezz/mongo-dumb-setup:0.1
docker run --rm \ # remove after run
       --net skynet --name pystorage qezz/pystorage:0.1
