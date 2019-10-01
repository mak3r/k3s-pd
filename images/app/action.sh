#!/bin/bash

POWER_OUT_FILE=$1
PIN=$2
echo "Detect low on wiringpi pin # $PIN"
echo "When power is out, touch $POWER_OUT_FILE"

gpio mode $PIN in
gpio mode $PIN up

while true; do
  STATE=$(gpio read $PIN);
  sleep 5; 
  if [ "$STATE" -eq "0" ]; then
    date;
    touch "$POWER_OUT_FILE"
  fi
done;

