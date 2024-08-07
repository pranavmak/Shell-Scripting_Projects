#!/bin/bash

# Function to mask the input string
maskify() {
    local input="$1"
    local length=${#input}

    if [ "$length" -le 4 ]; then
        echo "$input"
    else
        local mask=$(printf '#%.0s' $(seq 1 $((length - 4))))
        echo "${mask}${input: -4}"
    fi
}

# Test cases
test_cases() {
    echo "Running tests..."

    local result

    result=$(maskify "5512103073210694")
    [ "$result" == "############0694" ] && echo "Test 1 passed" || echo "Test 1 failed: expected '############0694' but got '$result'"

    result=$(maskify "64607935616")
    [ "$result" == "#######5616" ] && echo "Test 2 passed" || echo "Test 2 failed: expected '#######5616' but got '$result'"

    result=$(maskify "54321")
    [ "$result" == "#4321" ] && echo "Test 3 passed" || echo "Test 3 failed: expected '#4321' but got '$result'"

    result=$(maskify "21")
    [ "$result" == "21" ] && echo "Test 4 passed" || echo "Test 4 failed: expected '21' but got '$result'"

    result=$(maskify "Nananananananananananananananana Batman!")
    [ "$result" == "####################################man!" ] && echo "Test 5 passed" || echo "Test 5 failed: expected '####################################man!' but got '$result'"

    result=$(maskify "")
    [ "$result" == "" ] && echo "Test 6 passed" || echo "Test 6 failed: expected '' but got '$result'"

    echo "Tests completed."
}

# Run test cases
test_cases
