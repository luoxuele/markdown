#!/bin/bash

case "${1}" in 
  1) echo "Option was 1!";;
  2) echo "Option was 2!";;
  *) echo "Option was something else: '${1}'";;
esac