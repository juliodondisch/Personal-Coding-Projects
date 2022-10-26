# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   4.19 How Many Gadgets
# Date:         19 September 2022

from math import *

a = float(input("Please enter the coefficient A: "))
b = float(input("Please enter the coefficient B: "))
c = float(input("Please enter the coefficient C: "))

### Checks whether inputs are valid
if not (a == b == 0):
    
    ### Checks to see if this is quadratic or linear by checking if coefficient a = 0
    if not (a==0):
        ### check if roots are real. If  b^2 - 4ac is more than 0 then both roots are real
        if b**2 - 4*a*c > 0:
            root1 = (-b + sqrt(b**2-4*a*c))/2*a
            root2 = (-b - sqrt(b**2-4*a*c))/2*a
            if root1 > root2:
                print(f"The roots are x = {root1:.1f} and x = {root2:.1f}")
            else:
                print(f"The roots are x = {root2:.1f} and x = {root1:.1f}")

        ### Checks to see if roots are imaginary. If  b^2 - 4ac is less than 0 then both roots are imaginary
        elif b**2 - 4*a*c < 0:
            root1 = f"{(-b)/2*a:.1f} + {sqrt(abs(b**2-4*a*c))/2*a}i"
            root2 = f"{(-b)/2*a:.1f} - {sqrt(abs(b**2-4*a*c))/2*a}i"
            print(f"The roots are x = {root1} and x = {root2}")
            
        ### If b^2 - 4ac is = 0 then theres only 1 root
        else:
            root1 = (-b + sqrt(b**2-4*a*c))/2*a
            print(f"The root is x = {root1:.1f}")

            
            
    
    ### If it's linear it finds the roots with a different equation
    else:
        root1 = -(c/b)
        print(f"The root is x = {root1}")

### If a and b are equal there are no roots
else:
    print("You entered an invalid combination of coefficients!")