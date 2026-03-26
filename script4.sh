#!/bin/bash
# Script 4: Log File Analyzer
# Author: Chitpal Singh

# Get logfile from argument
LOGFILE=$1

# Default keyword is "error"
KEYWORD=${2:-"error"}

# Initialize counter
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found"
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do
    
    # Check if keyword exists in line (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi

done < "$LOGFILE"

# Print result
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
