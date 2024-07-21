#!/bin/bash

n=200

if [ $((n%10)) -eq 0 ];
then
	echo "Divisible by 10"
else
	echo "Not divisible by 10"
fi
