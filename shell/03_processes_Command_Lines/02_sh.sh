#!/bin/bash
IFS="."
name="Simon.Smith"
out="output.txt"

# echo "$name" > "~/$out"
# echo $name > ~"/$out"
# echo $name > "$HOME/$out"

ff "$name" > "~/$out"
等于： ff "Simon.Smith" > "~/output.txt"