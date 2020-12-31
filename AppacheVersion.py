#----NOTE-This will grab the full header----#
#import urllib.request
#response = urllib.request.urlopen('https://url1.co.uk/')
#print("url1 - ",response.headers)

#----NOTE-If the server is behind a WAF then this script might not work----#

import urllib.request

response1 = urllib.request.urlopen('https://URL1/')
response2 = urllib.request.urlopen('https://URL2/')

Value1 = ("URL1 - ",response1.headers['Server'])
Value2 = ("URL2 - ",response2.headers['Server'])

print("URL1 - ",response1.headers['Server'])
print("URL2 - ",response2.headers['Server'])

with open('/LOCATION/list_1.txt', 'w') as output:
    output.write(str(Value1))
    output.write("\n")
    output.write(str(Value2))

    
    
    #----NOTE-This will grab the full header----#
#import urllib.request
#response = urllib.request.urlopen('https://jewsons.co.uk/')
#print("Jewsons - ",response.headers)

#----NOTE-If the server is behind a WAF then this script might not work----#

import urllib.request

response1 = urllib.request.urlopen('https://jewsons.co.uk/')
response2 = urllib.request.urlopen('https://google.co.uk/')

Value1 = ("Jewsons - ",response1.headers['Server'])
Value2 = ("Scotframe - ",response2.headers['Server'])

print("Jewsons - ",response1.headers['Server'])
print("Scotframe - ",response2.headers['Server'])

with open('/home/kalims/Documents/list_1.txt', 'w') as output:
    output.write(str(Value1))
    output.write("\n")
    output.write(str(Value2))
