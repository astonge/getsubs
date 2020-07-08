#!/usr/bin/env bash
export VT_API_KEY=21b8da596c3be094967c88df212e2f72a4d9dd31caebe11b362052d462c3ebd7
assetfinder --subs-only $1 | tee $1-assetfinder.txt
