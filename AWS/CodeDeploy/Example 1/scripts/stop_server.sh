#!/bin/bash
# Stop the application
echo "Stopping the application..."
pm2 stop myapp || echo "Application is not running"
