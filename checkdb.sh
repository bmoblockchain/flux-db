#!/bin/bash

# Check the status of mongod.service
systemctl status mongod.service | grep -q "active (running)"

# Exit code interpretation:
# - 0: mongod.service is running
# - 1: mongod.service is not running (or other error)

if [ $? -eq 1 ]; then
  echo "mongod.service is not running. Rebooting..."
  sudo systemctl reboot
else
  echo "mongod.service is running."
fi
