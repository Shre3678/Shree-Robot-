import requests
import json
import jsonpath

api_url="https://reqres.in/api/user?page=2"
response = requests.get(api_url)
print(response.text)

#Validation response
assert response.status_code==200
