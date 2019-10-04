# k3s-pd
k3s power detection. Container to use with an RPi UPS to detect if the main power is out. Use battery power to capture the state of the master and convert an agent to become the master.

## Docker image default arguments:
- Script to run [action.sh]
- Full path of file to write to disk (enable|disable e.g.) [text placeholder "full_path_to_file"]
- Pin # to use for detection (use wiringpi pin #s) [0]
- Polling interval in seconds [15]

## Scripts
action.sh - the live script. will write a file to the location specified
inaction.sh - does not use a file write path. instead, this just outputs a short message when the pin# specified is detected as low.

### action.sh script parameters in order:
POWER_OUT_FILE=$1 - a file name to touch (defaults to the string "full_path_to_file"]
PIN=$2 - the wiringpi pin to poll (default pin #0)
SLEEP=$3 - the amount of time to sleep between polling the pin (default 15 sec)

### action.sh script parameters in order:
PIN=$1 - the wiringpi pin to poll (default pin #0)
