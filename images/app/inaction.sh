gpio mode 0 in
gpio mode 0 up

while true; do
  STATE=$(gpio read 0);
  sleep 3; 
  if [ "$STATE" -eq "0" ]; then
    date;
    echo "The power is out. What should we do?";
  fi
done;

