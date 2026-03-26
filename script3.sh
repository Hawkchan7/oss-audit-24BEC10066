#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Chitpal Singh

# List of directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory
for DIR in "${DIRS[@]}"; do

    # Check if directory exists
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        # Print result
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    
    else
        echo "$DIR does not exist"
    fi
done

# Check VLC configuration directory
if [ -d "$HOME/.config/vlc" ]; then
    echo "VLC config directory exists:"
    ls -ld "$HOME/.config/vlc"
else
    echo "VLC config directory not found"
fi
