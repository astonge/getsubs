#!/usr/bin/env bash

if [ -z $1 ]; then
	echo "Please supply a domain (ex: sj <domain.tld>)"
else
	cat $1*.txt |sort -u |tee domains-list.txt
	subjack -c ~/.go/src/github.com/haccer/subjack/fingerprints.json -v -t 35 -m -w domains-list.txt -a -ssl -o $1-scan
fi
