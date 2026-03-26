#!/bin/bash
# Script 1: System Identity Report
# Author: Chitpal Singh

# Store student and software details
STUDENT_NAME="Chitpal Singh"
SOFTWARE_CHOICE="VLC Media Player"

# Collect system information
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

# Get Linux distribution
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)

# Display output
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "Distro   : $DISTRO"
echo "License  : GNU General Public License (GPL)"
echo "======================================"
