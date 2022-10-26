# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Names:        Julio Dondisch, Fethullah Tas, Kevin Patel, Casey Killingbeck
# Section:      577
# Assignment:   1.12 Lab Linear Interpolation
# Date:         1 September 2022

from math import *

x1 = 10
y1 = 2026
x2 = 55
y2 = 23026
xp1 = 25
xp2 = 300
r = 6745

#Part 1
print("Part 1:")
if (x1 <= xp1 <= x2):
    print("For t = 25 minutes, the position p =",((y2-y1)/(x2-x1))*(xp1-x1)+y1,"kilometers")
else:
    print("For t = 25 minutes, the position p =",(((y2-y1)/(x2-x1))*(xp2-x1)+y1)%(2*pi*r),"kilometers")

#Part 2
print("\nPart 2:")
if (x1 <= xp2 <= x2):
    print("For t = 300 minutes, the position p =",((y2-y1)/(x2-x1))*(xp2-x1)+y1,"kilometers")
else:
    print("For t = 300 minutes, the position p =",(((y2-y1)/(x2-x1))*(xp2-x1)+y1)%(2*pi*r),"kilometers")