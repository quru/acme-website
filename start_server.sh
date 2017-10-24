#!/bin/bash

if [ ! -f /var/run/http_server.pid ]; then
    python -m SimpleHTTPServer 80 >> access.log 2>&1 &
    echo $! > /var/run/http_server.pid
fi
