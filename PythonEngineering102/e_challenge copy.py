# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   4.13 Making Change
# Date:         6 September 2022

from math import *
#hi
amountPaid = float(input("How much did you pay? "))
cost = float(input("How much did it cost? "))
change = amountPaid - cost

if (change >= .25):
    quarter = "quarter"
    if (change >= .5):
        quarter = "quarters"
    print(f"{change//.25} {quarter}")
    change = change%.25
    
if (change >= .10):
    dime = "dime"
    if (change >= .5):
        dime = "dimes"
    print(f"{change//.10} {dime}")
    change = change%.10
    
if (change >= .05):
    nickel = "nickel"
    if (change >= .5):
        nickel = "nickels"
    print(f"{change//.05} {nickel}")
    change = change%.05
    
    
if (change >= .01):
    penny = "penny"
    if (change >= .02):
        penny = "pennies"
    print(f"{change//.01} {penny}")