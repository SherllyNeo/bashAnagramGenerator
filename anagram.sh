#!/bin/bash




RandomWord=$( cat US.txt | sort -R | head -n 1 )
echo "$RandomWord"

Anagram=$( echo "$RandomWord" | fold -w1 | shuf | xargs echo | tr -d "[:space:]" | tr '[:upper:]' '[:lower:]' )
echo "$Anagram"


