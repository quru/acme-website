#!/bin/bash

if [ ! -f /var/run/http_server.pid ]; then
    nohup python -m SimpleHTTPServer 80 >> access.log 2>&1 &
    echo $! > /var/run/http_server.pid
else
    echo "Web server already running - please stop it first."
    exit 1
fi
