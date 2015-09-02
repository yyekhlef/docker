#!/bin/bash

SEC=$1

if [ ! $SEC ]; then
  SEC=30
fi
echo "Wait $SEC sec"

i=1
while [ $i -le $SEC ] 
#for i in {1..`echo $SEC`}
do
  echo $i
  sleep 1
  (( i++ ))
done

