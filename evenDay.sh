#!/bin/bash

cDate=$(date+'%d')

if [ $((cDate%2)) -eq 0 ];then
    echo "Even Day"
fi
