for ip in $(seq 2 10); do host 8.8.8.$ip; done | grep -v "not found" 
