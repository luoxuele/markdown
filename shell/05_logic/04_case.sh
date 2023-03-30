#!/bin/bash

read -p "Please enter a number: " number
case "$number" in
    [0-9])  echo "you have entered a single digit number";;
    [0-9][0-9]) echo "you have entered a two digit number";;
    [0-9][0-9][0-9]) echo "you have entered a three digit number";;
    *) echo "you have entered a number that is more than tree digits"
esac
