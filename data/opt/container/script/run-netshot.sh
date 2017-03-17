#!/bin/bash

function onProcessStopped() {
     kill -TERM ${1}
     kill -TERM ${2}

     exit 0
}

export DISPLAY=:0

rm -rf /tmp/.X0-lock /tmp/.X11-unix

Xvfb :0 -screen 0 640x480x24 &

pid_xvfb=$!

netshot -d /opt/container/screenshots &

pid_netshot=$!

trap "onProcessStopped ${pid_netshot} ${pid_xvfb}" INT KILL TERM

wait ${pid_netshot}