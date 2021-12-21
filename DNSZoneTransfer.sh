#! /bin/bash

#Zone Transfer Bash Script
#$1 - first argument given after the bash script
#check if argument was given, if not, print usage

if [ -z "$1" ]; then
  echo "[*] Simple Zone transfer script"
  echo "[*] Usage   : $0 <domain name> "
  exit 0
fi

#if argument was given, identify the DNS server for the domain

for server in $(host -t ns $1 | cut -d " " -f4); do
  #for each of these servers, attempt a zone transfer
  host -l $1 $server |grep "has address"
done
