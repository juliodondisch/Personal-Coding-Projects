# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   4.14 Pretty Equation
# Date:         15 September 2022

from math import *
#swag cool epic code

a = int(input("Please enter the coefficient A: "))
b = int(input("Please enter the coefficient B: "))
c = int(input("Please enter the coefficient C: "))

powerOfHighestCoefficient = 2

equationPartA = ""
equationPartB = ""
equationPartC = ""

########## For coefficient A ##############
if a == 1:
    equationPartA = "x^2 "
elif a == -1:
    equationPartA = "- x^2 "
elif a == 0:
    equationPartA = ""
    powerOfHighestCoefficient = 1
elif a < 0:
    equationPartA = f"- {abs(a)}x^2 "
elif a > 0:
    equationPartA = f"{a}x^2 "
    
######## For coefficient B ###########
if b == 1:
    if powerOfHighestCoefficient == 1:
        equationPartB = "x "
    else:
        equationPartB = "+ x "
elif b == -1:
    equationPartB = "- x "
elif b == 0:
    equationPartB = ""
    if powerOfHighestCoefficient == 1:
        powerOfHighestCoefficient = 0
elif b < 0:
    equationPartB = f"- {abs(b)}x "
elif b > 0:
    if powerOfHighestCoefficient == 1:
        equationPartB = f"{b}x "
    else:
        equationPartB = f"+ {b}x "

########### For Coefficient C ############
if c == 1:
    if powerOfHighestCoefficient == 1:
        equationPartC = "{c}"
    else:
        equationPartC = "+ {c}"
elif c == -1:
    equationPartC = "- {abs(c)}"
elif c == 0:
    equationPartC = ""
    if powerOfHighestCoefficient == 1:
        powerOfHighestCoefficient = 0
elif c < 0:
    equationPartC = f"- {abs(c)}"
elif c > 0:
    if powerOfHighestCoefficient == 1:
        equationPartC = f"{c}"
    else:
        equationPartC = f"+ {c}"
        


print(f"The quadratic equation is {equationPartA}{equationPartB}{equationPartC} = 0")

