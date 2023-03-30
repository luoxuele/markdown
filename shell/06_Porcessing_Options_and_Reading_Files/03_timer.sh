#!/bin/bash

total_seconds=""

while getopts "m:s:" opt; do
    # echo $opt
    case "$opt" in 
        m) total_seconds=$(( $total_seconds + $OPTARG * 60 ));;
        s) total_seconds=$(( $total_seconds + $OPTARG )) ;;

    esac
done

while [ $total_seconds -gt 0 ]; do
    echo "$total_seconds"
    total_seconds=$(( $total_seconds -1 ))
    sleep 1s

done

echo "Time's up!"

# bash 03_timer.sh -s 10
# bash 03_timer.sh -m 1 -s 5
