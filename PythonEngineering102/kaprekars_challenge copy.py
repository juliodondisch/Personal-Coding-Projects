# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   7.28 Kaprekars Constant
# Date:         4 October 2022

### declare iterations
iterations = 0

### run through Kaprekar's routine
for x in range(10000):
    ### parse num to string; easier to deal with
    num = str(x)
    ### run through Kaprekar's routine
    while int(num) != 6174 and int(num) != 0:
            if len(num) != 4:
                for i in range(4-len(num)):
                    num = '0' + num
            iterations += 1
            ascendingNum = sorted(num)
            descendingNum = sorted(num)
            descendingNum.reverse()
            num = str(int(''.join(descendingNum))-int(''.join(ascendingNum)))
        
### add last routine element
print(f'Kaprekar\'s routine takes {iterations} total iterations for all four-digit numbers')
