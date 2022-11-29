#!/bin/bash

linecount=$(cat name.txt | wc -l)
[ -f /tmp/test-mission.txt ] && rm /tmp/test-mission.txt
now=1

while ( true ) ; do
    [ $now -gt $linecount ] && break
    sed -n "${now}p" name.txt | sed -r "/Johnson:(Female|Male):010-.*$/ s/....-....$/$(echo "$(cat /dev/urandom | tr -dc '0-9' | fold -w 4 | head -n 1)-$(cat /dev/urandom | tr -dc '0-9' | fold -w 4 | head -n 1)")/g" >> /tmp/test-mission.txt
    let "now += 1"
done

[ -f /tmp/test-mission.txt ] && cp /tmp/test-mission.txt name.txt

cat name.txt
