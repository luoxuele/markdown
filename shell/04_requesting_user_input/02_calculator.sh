#!/bin/bash

echo $(( ${2:-0} $1 ${3:-0}))

# sh 02_calculator.sh + 22 33