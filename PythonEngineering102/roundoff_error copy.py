# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   4.17 Roundoff Error
# Date:         19 September 2022

############ Part A ############
TOL = 1e-10
a = 1/7
print(f"a = {a}")
b = a * 7
print(f"b = a * 7 = {b}")
# b is 1.0, as it should be

c = 2 * a
d = 5 * a
f = c + d
print(f"f = 2 * a + 5 * a = {f}")
# the value of f should be 1. the value ends up being 0.9999999999999999 because of a roundoff error

from math import sqrt
x = sqrt(1/3)
print(f"x = {x}")
y = x * x * 3
print(f"y = x * x * 3 = {y}")
z = x * 3 * x
print(f"z = x * 3 * x = {z}")

############ Part B ############
if abs(b-f) < TOL:
    print(f"b and f are equal within tolerance of {TOL}")
else:
    print(f"b and f are NOT equal within tolerance of {TOL}")
    
if abs(y-z) < TOL:
    print(f"y and z are equal within tolerance of {TOL}")
else:
    print(f"y and z are NOT equal within tolerance of {TOL}")
# the values of y and z should both be 1.0, but the value of z is 0.9999999999999999. The roundoff error took place when x was multiplied by 3 before x

############ Part C ############
m = 0.1
print(f"m = {m}")
n = 3 * m
print(f"n = 3 * m = 0.3 {n==0.3}")
p = 7 * m
print(f"p = 7 * m = 0.7 {p==0.7}")
q = n + p
print(f"q = n + p = 1 {q==1}")

# thank you, very cool




