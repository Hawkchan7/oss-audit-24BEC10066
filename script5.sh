#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Chitpal Singh

echo "Answer the following questions:"
echo ""

# Take user input
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. What does 'freedom' mean to you (one word): " FREEDOM
read -p "3. What would you like to build and share: " BUILD

# Get current date
DATE=$(date '+%d %B %Y')

# Output file name
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto content
echo "On $DATE, I believe that open source represents $FREEDOM." > $OUTPUT
echo "Tools like $TOOL show how powerful community-driven development can be." >> $OUTPUT
echo "In the future, I would like to build $BUILD and share it freely with others." >> $OUTPUT

# Display result
echo ""
echo "Manifesto saved to $OUTPUT"
echo "---------------------------"
cat $OUTPUT
