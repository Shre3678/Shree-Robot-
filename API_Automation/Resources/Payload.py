import json

def read_request_content():
    file = open('D:/payload.json', 'r')
    jsonfile=file.read()
    json_content=json.loads(jsonfile)
    return json_content

#little validation
#x=read_request_content()
#print(x)