#!/bin/bash

wpscan --update                                                                                                                                                                                      1 ⨯

wpscan --url site1.com --ignore-main-redirect -o /home/USER/Documents/site1.txt

echo "Time: $(date -Iseconds). WPScan." >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'

echo "First site"
echo "First site" >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'
grep "WordPress version" /home/USER/Documents/site1.txt >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'
grep "Effective URL" /home/USER/Documents/site1.txt >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'
grep -i -B 4 "The version is out of date" /home/USER/Documents/site1.txt >> /home/USER/Documents/sum.txt | awk '{print $0,"\n"}'

echo "done"
