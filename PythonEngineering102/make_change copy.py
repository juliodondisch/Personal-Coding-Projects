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
amountPaid = float(input("How much did you pay? \n"))
print('')

cost = float(input("How much did it cost?"))
print('')
change = amountPaid - cost
change += .0001

print(f"You received ${change:.2f} in change. That is...\n")

if (change >= .25):
    quarter = "quarter"
    if (change >= .5):
        quarter = "quarters"
    print(f"{int(change//.25)} {quarter}\n")
    change = change%.25
    
if (change >= .10):
    dime = "dime"
    if (change >= .20):
        dime = "dimes"
    print(f"{int(change//.10)} {dime}\n")
    change = change%.10
    
if (change >= .05):
    nickel = "nickel"
    if (change >= .10):
        nickel = "nickels"
    print(f"{int(change//.05)} {nickel}\n")
    change = change%.05
    
    
if (change >= .01):
    penny = "penny"
    if (change >= .02):
        penny = "pennies"
    print(f"{int(change//.01)} {penny}\n")