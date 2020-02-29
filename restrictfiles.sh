#!/bin/bash
# Simple script to set permissions on files containing a specific string
echo "Permissions before changes:"
ls -l /home/AliceAlexHurley/
echo "Files with ''top_secret'' detected:"
grep -Ril top_secret /home/AliceAlexHurley/* | while read p; do
        echo $p
        chown AliceAlexHurley $p
        chmod 500 $p
done
echo "Permissions after changes:"
ls -l /home/AliceAlexHurley/
