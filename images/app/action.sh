#!/bin/bash

POWER_OUT_FILE=$1
PIN=$2
SLEEP=$3

echo "Detect low on wiringpi pin # $PIN"
echo "When power is out, touch $POWER_OUT_FILE"

gpio mode $PIN in
gpio mode $PIN up

while true; do
  STATE=$(gpio read $PIN);
  sleep 5; 
  if [ "$STATE" -eq "0" ]; then
    date;
    if test -f "$POWER_OUT_FILE-activated"; then
      continue
    else
      touch "$POWER_OUT_FILE"
    fi
  fi
done;

