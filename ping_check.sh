#!/bin/bash

# list of servers to check
servers=("google.com" "github.com" "192.168.1.1" "amazon.com" "pandora.com")

# log file
logFile="my_ping_test.log"

# clear previous log
> $logFile

echo "=== Starting ping check at $(date) ===" | tee -a $logFile

for server in "${servers[@]}"; do
        if ping -c 1 -W 2 $server > /dev/null 2>&1; then
                echo "$server is UP " | tee -a $logFile
        else
                echo "$server is DOWN" | tee -a $logFile
        fi
done

echo "--------------------------------------" | tee -a $logFile
echo "Done. Results saved to $logFile"
