# k3s-pd
k3s power detection. Container to use with an RPi UPS to detect if the main power is out. Use battery power to capture the state of the master and convert an agent to become the master.

## Docker image arguments:
- Script to run
- Full path of file to write to disk (enable|disable e.g.)
- Pin # to use for detection (use wiringpi pin #s)

## Scripts
action.sh - the live script. will write a file to the location specified
inaction.sh - does not use a file write path. instead, this just outputs a short message when the pin# specified is detected as low.
