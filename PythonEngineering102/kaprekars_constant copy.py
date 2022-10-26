# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   7.28 Kaprekars Constant
# Date:         4 October 2022

### take inputs
inNum = input("Enter a four-digit integer: ")

### declare num and store input separately
num = inNum
### declare routine and iterations
routine = ''
iterations = 0

### run through Kaprekar's routine
while int(num) != 6174 and int(num) != 0:
        if len(num) != 4:
            for i in range(4-len(num)):
                num = '0' + num
        routine += f'{int(num)} > '
        iterations += 1
        ascendingNum = sorted(num)
        descendingNum = sorted(num)
        descendingNum.reverse()
        num = str(int(''.join(descendingNum))-int(''.join(ascendingNum)))
        
### add last routine element
routine += f'{num}'

### print output
print(routine)
print(f'{inNum} reaches {num} via Kaprekar\'s routine in {iterations} iterations')

