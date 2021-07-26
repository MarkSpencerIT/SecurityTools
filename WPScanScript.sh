#!/bin/bash

wpscan --url site1.com -o /home/kalims/Documents/site1.txt
wpscan --url site2.co.uk -o /home/kalims/Documents/site2.txt

echo "First site"
grep "The version is out of date" /home/kalims/Documents/markspencerit.txt
echo "second site"
grep "The version is out of date" /home/kalims/Documents/BradfordMMA.txt

echo "done"
