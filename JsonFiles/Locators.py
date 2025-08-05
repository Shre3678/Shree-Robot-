import json
import jsonpath

def read_locators_from_json(locatorname):
    f=open("C:\\Users\\Lenovo\\PycharmProjects\\Automation-office\\JsonFiles\\Elements.json")
    jsondata=json.load(f)
    value=jsonpath.jsonpath(jsondata, locatorname)
    return value[0]

