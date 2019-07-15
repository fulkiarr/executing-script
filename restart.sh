#!/bin/bash

cd /Users/xshot51/Documents/Bash\ Executing/

command=`pgrep -f test.py`
if [ ${#command} -lt 1 ]; then
    echo "Cant find PID on this running program"
else
    `kill -9 $command` 
    echo "Program killed"
fi