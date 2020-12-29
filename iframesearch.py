# Simple script to find iframes and sandboxes on websites.
# N.B. - The script does not work if the website is behind a WAF.

#Support for regular expressions (RE),used for the search output
import re

# HTTP library which allows use to search websites
import requests

#The text we are looking for on a website.
s = '<iframe'
e = '</iframe>'
sb = 'sandbox="'
r = requests.get('https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_iframe_sandbox_form')
result = re.search(s, r.text)
result2 = re.search(e, r.text)
result3 = re.search(sb, r.text)

#If there is no iframes on the website it will display "None"
print("iframes found: - ",result,result2)

#Will search for sandbox in the code.
print("Sandbox found: - ",result3)
