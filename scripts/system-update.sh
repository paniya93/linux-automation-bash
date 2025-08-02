#!/bin/bash
#Author Praneeth Perera

# Ubuntu OS

LOG_DIR="../logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/sysupdate_$(date +%F).log"

echo "Updating system at $(date)" | tee -a "$LOG_FILE"
sudo apt-get update -y && sudo apt-get upgrade -y | tee -a "$LOG_FILE"

# RHEL OS

LOG_DIR="../logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/sysupdate_$(date +%F).log"

echo "Updating system at $(date)" | tee -a "$LOG_FILE"
sudo yum update -y && sudo yum upgrade -y | tee -a "$LOG_FILE"

OR

sudo dnf update -y && sudo dnf upgrade -y | tee -a "$LOG_FILE"

