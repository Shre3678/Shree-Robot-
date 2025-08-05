# for "and" here the two condtions are has to be true
a =input("enter the value  ")
a = int(a)
if ((a >= 0) and (a%2==0)):
    print("the entered value is even")
elif ((a >= 0) and (a%2!=0)):
    print("the entered value is odd")

# for "or" here the any one condtions has to be true

num =input("enter the value  ")
num = int(num)
if ((num >= 0) or (num%2==0)):
    print("the entered value is even")
elif (num >= 0 or num%2!=0):
    print("the entered value is odd")
