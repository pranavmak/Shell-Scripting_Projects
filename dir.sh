#!/bin/bash

mkdir -p dummy  # Add -p to avoid error if the directory already exists

for i in {1..10}
do
    touch dummy/file_${i}.txt  # Add a meaningful filename and extension
done
