import      os
#Create folder
def first():
        os.mkdir("D://pyth")
        print("created folder")

#first()

#create subfolder in pyth
def second(foldername):
        os.mkdir("D://pyth//"+ foldername)
        print("changing folder" + " " +foldername)


#second("Cognizan")

#function with argument and with return value
def Cocatenate(Value1, Value2):
        value3 = Value1 + Value2
        return value3


