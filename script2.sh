#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Chitpal Singh

# Take package name as input
PACKAGE=$1

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE | head -1
else
    echo "$PACKAGE is NOT installed."
fi

# Display description using case
case $PACKAGE in
    vlc) echo "VLC: A powerful open-source media player" ;;
    git) echo "Git: Version control system" ;;
    apache2) echo "Apache: Web server software" ;;
    mysql) echo "MySQL: Open-source database" ;;
    *) echo "Unknown package — open source enables flexibility" ;;
esac
