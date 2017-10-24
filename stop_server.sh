#!/bin/bash

if [ -f /var/run/http_server.pid ]; then
    kill `cat /var/run/http_server.pid`
    rm /var/run/http_server.pid
fi
