#!/bin/bash
# Validate if the application is running
if pm2 list | grep -q "myapp"; then
    echo "Service is running"
else
    echo "Service is not running" && exit 1
fi
