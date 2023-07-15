#!/usr/bin/env bash

string1=${#1}
string2=${#2}
distance=0

if [ $# -ne 2 ]; then
  echo "Usage: hamming.sh <string1> <string2>"
  exit 1
fi

if [[ $string1 -eq $string2 ]]; then
  for i in $(seq 0 "$string1"); do
    if [[ ${1:i:1} != "${2:i:1}" ]]; then 
      distance=$((distance + 1))
    fi
  done
  echo $distance
else
  echo "strands must be of equal length"
  exit 22
fi
