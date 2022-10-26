# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   1.12 Lab Unit Conversions
# Date:         6 September 2022

from math import *
from sympy import *
#hi
number = float(input("Please enter the quantity to be converted: "))
print("")
print(f"{number:.2f} pounds force is equivalent to {number*4.44822:.2f} Newtons")
print(f"{number:.2f} meters is equivalent to {number*3.28084:.2f} feet")
print(f"{number:.2f} atmospheres is equivalent to {number*101.325:.2f} kilopascals")
print(f"{number:.2f} watts is equivalent to {number*3.412142:.2f} BTU per hour")
print(f"{number:.2f} liters per second is equivalent to {number*15.850323141489:.2f} US gallons per minute")
print(f"{number:.2f} degrees Celsius is equivalent to {number*9/5 + 32:.2f} degrees Fahrenheit")