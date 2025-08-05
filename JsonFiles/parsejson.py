import json

dict1='{"k1":"Srinu", "k2":"Srinu2", "k3":"Srinu3"}'

jsonR=json.loads(dict1)
print(jsonR['k2'])