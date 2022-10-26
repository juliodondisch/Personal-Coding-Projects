# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   6.14 Juggler Sequence
# Date:         27 September 2022

from math import sqrt
### get inputs ###
number = int(input("Enter a positive integer: "))

print(f"The Juggler sequence starting at {number} is:")
### run through juggler sequence ###
iterations = 0
while int(number) > 1:
    iterations += 1
    ### print number beforehand so you print first number, and don't get to the last one that needs a comma
    print(f"{number},", end=' ')
    if number % 2 == 0:
        number = int(sqrt(number))
    else:
        number = int(sqrt(number)**3)

### print final number (1) to correct syntax ###
print(f"{number}")
### print iterations ###
print(f"It took {iterations} iterations to reach 1")