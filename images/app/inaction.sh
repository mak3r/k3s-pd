#!/bin/bash

PIN=$2

gpio mode $PIN in 
gpio mode $PIN up

while true; do
  STATE=$(gpio read $PIN);
  sleep 5; 
  if [ "$STATE" -eq "0" ]; then
    date;
    echo "The power is out. What should we do?";
  fi
done;

