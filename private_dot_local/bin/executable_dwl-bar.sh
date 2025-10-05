#!/usr/bin/env bash

SOCKET="/run/user/$(id -u)/dwl-bar-0"

# Start dwl-bar in the background
dwl-bar &

# Wait for socket
for i in $(seq 1 50); do
    [ -e "$SOCKET" ] && break
    sleep 0.1
done

# Replace the script with someblocks (so PID is someblocks)
exec someblocks -s "$SOCKET"
