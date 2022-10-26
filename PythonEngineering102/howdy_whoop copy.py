# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   6.13 Howdy Whoop
# Date:         27 September 2022

### Take inputs ###
firstNum = int(input("Enter an integer: "))
secondNum = int(input("Enter another integer: "))

### evaluate for all 100 numbers ###
for x in range (100):
    if (x+1) % firstNum == 0:
        print("Howdy")
    if (x+1) % secondNum == 0:
        print("Whoop")
    if not ((x+1) % firstNum == 0 or (x+1) % secondNum == 0):
        print(x+1)