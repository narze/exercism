#!/bin/bash

if [ $# == 0 ]
then
  name=World
else
  name=$@
fi

echo Hello, $name!
