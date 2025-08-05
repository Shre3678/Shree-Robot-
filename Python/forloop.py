
# Range
for i in range(1,10):
    print(i) # 1 to 9

# loop with list
list = [1,"Hello",3,4,5,"hai dear",7,8,9]
for i in list:
    print(i)

#loop with input from user input
user = input("enter the value  ")
user = int(user)
for i in range(1,10):
    print(user*i)

#loop with input from user input (tabel)
user = input("enter the value  ")
for i in range(1,11):
    print(user + " * " + str(i) + " = " + str(int(user)*i) )

#for loop with increment with 2
for i in range(1,11,2):
    print(i)

#for loop with decrement with 2
for i in range(10,0,-2):
    print(i)

#for loop with user input range
number = int(input("enter the value  "))
for i in range(1,number+1):
    print(i)





