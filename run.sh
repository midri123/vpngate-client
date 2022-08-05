#!/bin/bash

# Start the first process
/vpngate-client/vpngate-client &

 sleep 1m
# Start the second process
/app/honeygain -tou-accept &
  
# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?
