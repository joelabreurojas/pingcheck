#!/bin/bash

while read ip
do
  ping -c 1 $ip >/dev/null 2>&1 || echo "$ip failed!" &
done < ip-address.txt
wait
