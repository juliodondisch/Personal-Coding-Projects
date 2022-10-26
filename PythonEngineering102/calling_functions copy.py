# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   3.18 Calling Functions
# Date:         8 September 2022

from math import *

def printresult(shape, side, area):
    '''Print the result of the calculation'''
    print(f'A {shape} with side {side:.2f} has area {area:.3f}')
    


# example function call:
# printresult(<string of shape name>, <float of side>, <float of area>)
# printresult('square', 2.236, 5)

side = float(input("Please enter the side length: "))
print('')
    
printresult("triangle", side, sqrt(3)/4 * side**2)
printresult("square", side, side**2)
printresult("pentagon", side, (sqrt(5*(5+2*sqrt(5)))*side**2)/4)
printresult("dodecagon", side, 3*(2+sqrt(3))*side**2)