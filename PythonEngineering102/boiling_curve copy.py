# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   5.4 Boiling Curve
# Date:         19 September 2022

from math import *

exTemp = float(input("Enter the excess temperature: "))

### Y values of coordinates given
y1 = 1000
y2 = 7000
y3 = 1.5e6
y4 = 2.5e4
y5 = 1.5e6

### X values of coordinates given
x1 = 1.3
x2 = 5
x3 = 30
x4 = 120
x5 = 1200

### Interpolates for the first line
if 1.3<=exTemp<=5:
    m = log10(y2/y1)/log10(x2/x1)
    y = round(y1*(exTemp/x1)**m)
    print(f"The surface heat flux is approximately {y} W/m^2 ")

### Interpolates for the second line
elif 5<exTemp<=30:
    m = log10(y3/y2)/log10(x3/x2)
    y = round(y2*(exTemp/x2)**m)
    print(f"The surface heat flux is approximately {y} W/m^2 ")
    
### Interpolates for the third line
elif 30<exTemp<=120:
    m = log10(y4/y3)/log10(x4/x3)
    y = round(y3*(exTemp/x3)**m)
    print(f"The surface heat flux is approximately {y} W/m^2 ")
    
### Interpolates for the fourth line
elif 120<exTemp<=1200:
    m = log10(y5/y4)/log10(x5/x4)
    y = round(y4*(exTemp/x4)**m)
    print(f"The surface heat flux is approximately {y} W/m^2 ")

### Prints not available if excess heat is out of range
else:
    print("Surface heat flux is not available")