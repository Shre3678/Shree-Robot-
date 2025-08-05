import openpyxl

file_path = "C:\\Users\\Lenovo\\PycharmProjects\\Automation-office\\Excels\\Testingdata.xlsx"

#get the avaliable sheets
workbook = openpyxl.load_workbook(file_path)
print("Sheet names found:", workbook.sheetnames)

#get active sheet title name
print(workbook.active.title)

#create an object then you can get details which you pass the paremeter
sh=workbook["TestingTitle"]
print(sh.title)