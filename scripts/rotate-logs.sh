#!/bin/bash
#Author Praneeth Perera

LOG_DIR="/var/log"

# Archive .log files older than 7 days
find "$LOG_DIR" -type f -name "*.log" -mtime +7 -exec gzip {} \;

# Delete compressed logs older than 30 days
find "$LOG_DIR" -type f -name "*.gz" -mtime +30 -exec rm -f {} \;

echo "Log rotation complete."

