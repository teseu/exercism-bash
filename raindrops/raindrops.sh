#!/usr/bin/env bash

output=''


if (( $1 % 3 == 0 ))
then
  output=Pling
fi
if (( $1 % 5 == 0 ))
then
  output="${output}Plang"
fi
if (( $1 % 7 == 0 ))
then
  output="${output}Plong"
fi
if (( $1 % 3 != 0 && $1 % 5 != 0 && $1 % 7 != 0))
then
  output=$1
fi
echo "$output"
