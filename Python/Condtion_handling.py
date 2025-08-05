#only if

data =input("enter the value  ")
data = int(data)
if data < 10:
    print(data*10)

#if-else for singles condition
data =input("enter the value  ")
data = int(data)
if data%2==0:
    print("the entered value is even")
else:
    print("the entered value is odd")

#if-elif-else for multiple conditions
data =input("enter the value  ")
data = int(data)
if data > 0:
    print("the entered value is positive")
elif data < 0 :
    print("the entered value is negative")
elif data == 0 :
    print("the entered value is zero")
else:
    print("End")

#nested condtion
data =input("enter the value  ")
data = int(data)
if data >= 0:
    if data == 0:
        print("the entered value is zero")
    else:
        print("the entered value is negative")
else:
    print("the entered value is positive")

#nested condtion
a =input("enter the value  ")
a = int(a)
if a >= 0:
    if a%2==0:
        print("the entered value is even")
    else:
        print("the entered value is odd")
else:
    print("the entered value is negative")
