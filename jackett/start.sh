#!/bin/bash

#function handle_signal {
#  PID=$!
#  echo "received signal. PID is ${PID}"
#  kill -s SIGHUP $PID
#}

cd /update
sh update.sh

#trap "handle_signal" SIGINT SIGTERM SIGHUP

echo "starting jackett"
mono /opt/Jackett/JackettConsole.exe & wait
echo "stopping jackett"

