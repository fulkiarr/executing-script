#!/bin/bash

cd /Users/xshot51/Documents/Bash\ Executing/

command=`pgrep -f test.py`
if [ ${#command} -lt 1 ]; then
    echo "Cant find PID on this running program"
    echo "Do you want to running this program [Y/y or N/n] :"
    read value
    case $value in  
    y|Y) nohup python test.py > /dev/null 2>&1 & ;; 
    n|N) echo Not running the program ;; 
    *)  echo Input invalid ;; 
    esac
    echo Running the program success 
else
    `kill -9 $command` 
    echo "Program killed"
    nohup python test.py > /dev/null 2>&1 &
    echo "Running the program again"
fi