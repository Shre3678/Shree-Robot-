#for loop with continue keyword skip the particular loop

for i in range(1,10):
    if  i==5:
        continue
    print(i)

#for loop with break keyword for stop the loop at 5
for i in range(1,10):
    if  i==5:
        break
    print(i)