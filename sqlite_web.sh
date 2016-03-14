#!/bin/bash

# Start sqlite_web and send the process to the background
/usr/local/bin/sqlite_web --host 0.0.0.0 --port 8080 ${1} > /dev/null 2>&1 &

# Extract the process id (PID) to simplify terminating the process
pid=$(( 1 + `ps -ef | grep sql | head -n 1 | sed 's/  / /g' | sed 's/  / /g' | cut -d \  -f 2` ))
echo "Type 'kill -9 ${pid}' to stop the SQLite browser"
