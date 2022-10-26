# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   6.15 Balancing Numbers
# Date:         27 September 2022

from math import *
### Get input ###
n = int(input("Enter a value for n: "))
sumPreviousNumbers = 0
sumNextNumbers = 0

### get sum of prev numbers ###
for x in range(n):
    sumPreviousNumbers += x

### keeps adding the next number to sumNextNumbers until its either equal to or more than sumPreviousNumbers ###
r = 0
while sumPreviousNumbers > sumNextNumbers:
    r += 1
    sumNextNumbers += n+r
    
### prints output ###
if sumPreviousNumbers == sumNextNumbers:
    print(f"{n} is a balancing number with r={r} ")
else:
    print(f"{n} is not a balancing number ")