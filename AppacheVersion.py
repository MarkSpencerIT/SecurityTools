#----NOTE-This will grab the full header----#
#import urllib.request
#response = urllib.request.urlopen('https://url1.co.uk/')
#print("url1 - ",response.headers)

#----NOTE-If the server is behind a WAF then this script might not work----#

import urllib.request

from datetime import date
today = date.today()
print("Today's date:", today)

response1 = urllib.request.urlopen('https://URL1/')
response2 = urllib.request.urlopen('https://URL2/')

Date = (today)
Value1 = ("URL1 - ",response1.headers['Server'])
Value2 = ("URL2 - ",response2.headers['Server'])

print("URL1 - ",response1.headers['Server'])
print("URL2 - ",response2.headers['Server'])

with open('/LOCATION/Webversion' + (str(Date)) + '.txt', 'w') as output:
    file.write("Today's Date - ")
    output.write("\n")
    file.write("URL1 - ")
    output.write(str(Value1))
    output.write("\n")
    file.write("URL2 - ")
    output.write(str(Value2)
    output.write("\n")
            
