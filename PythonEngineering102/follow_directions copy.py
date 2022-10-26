# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   1.12 Lab Follow Directions
# Date:         25 August 2022

from math import *
#hi
print("This shows the evaluation of (x^2-1)/(x-1) evaluated close to x=1")
print("My guess is 2")
x = 1.1
print((x**2 - 1)/(x - 1))
x = 1.01
print((x**2 - 1)/(x - 1))
x = 1.001
print((x**2 - 1)/(x - 1))
x = 1.0001
print((x**2 - 1)/(x - 1))
x = 1.00001
print((x**2 - 1)/(x - 1))
x = 1.000001
print((x**2 - 1)/(x - 1))
x = 1.0000001
print((x**2 - 1)/(x - 1))
x = 1.00000001
print((x**2 - 1)/(x - 1))

print("\nMy guess was good.")