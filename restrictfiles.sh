#!/bin/bash
# Simple script to set permissions on files containing a specific string
echo "Permissions before changes:"
ls -l /home/user/
echo "Files with ''top_secret'' detected:"
grep -Ril top_secret /home/user/* | while read p; do
        echo $p
        chown user $p
        chmod 500 $p
done
echo "Permissions after changes:"
ls -l /home/AliceAlexHurley/
