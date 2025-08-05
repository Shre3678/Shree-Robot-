#chaning the data type one to another

a=10
b=20
#print(a + " " + b) it not works because of the space treated as strings so we cant directly cocatinate the string and int so with help of typecasting we can do like below
print(str(a) + " " + str(b))

#accept the input from the user at the run time with help of "input" keyword

age = input("enter the value:-  ")
age = int(age)+5
print(age)

