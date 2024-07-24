#!/bin/bash

echo -n "Please enter your username: "
read username
echo -n "Please enter your password: "
read -s password
echo

if [ "$username" == "pranavvv" ] && [ "$password" == "pranavvv" ]; then
    echo "Login Success"
else
    echo "Wrong Login"
fi
