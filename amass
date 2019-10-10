#!/usr/bin/env bash
amass enum --passive -d $1 -json $1.json
jq .name $1.json | sed "s/\"//g" | tee -a $1-amass.txt
rm $1.json
