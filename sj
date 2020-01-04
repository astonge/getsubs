#!/usr/bin/env bash

if [ -z $1 ]; then
	echo "Please supply a domain (ex: sj <domain.tld>)"
else
	subjack -c ~/.go/src/github.com/haccer/subjack/fingerprints.json -v -t 20 -m -d $1 -w $1*.txt -a -o $1-scan
fi
