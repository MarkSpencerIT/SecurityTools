#!/bin/bash
wpscan --update

echo "Scanning - First site with WPScan"

wpscan --url site1.com --ignore-main-redirect -o /home/USER/Documents/site1.txt

echo "Completed Scan on First site"

echo "Time: $(date -Iseconds). WPScan." > /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'

echo "Adding details to summary document - First site"

echo "First site" >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'
echo "------------" >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'
grep "URL:" /home/USER/Documents/site1.txt >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'
echo "------------" >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'
grep "WordPress version" /home/USER/Documents/site1.txt >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'
echo "------------" >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'
grep -i -B 4 "The version is out of date" /home/USER/Documents/site1.txt >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'

echo "detials added to the summary document sum.txt"

echo "Scan complete your files are save here /home/USER/Documents/"
echo "NOTE - Make sure you have changes the USER section /home/USER/Documents/"
