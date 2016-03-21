#!/bin/bash

if [ $# == 0 ]
then
  echo "Usage: hamming.sh <string1> <string2>"
  exit 1
fi

a=$1
b=$2

if [ ${#a} != ${#b} ]
then
  echo The two strands must have the same length.
  exit 1
fi

if [ a == b ]
then
  echo 0
else
  diff=0

  for (( i=0; i<${#a}; i++ )); do
    if [ "${a:$i:1}" != "${b:$i:1}" ]
    then
      ((diff++))
    fi
  done

  echo ${diff}
fi
