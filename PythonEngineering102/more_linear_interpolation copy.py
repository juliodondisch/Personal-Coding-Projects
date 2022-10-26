# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   1.12 Lab More Linear Interpolation
# Date:         1 September 2022

from math import *
#hi
t1 = 12
x1 = 8
y1 = 6
z1 = 7

t2 = 85
x2 = -5
y2 = 30
z2 = 9

t = 30.0

if (t1 <= t <= t2):
    print("At time",t,"seconds:")
    print("x1 =",((x2-x1)/(t2-t1))*(t-t1)+x1,"m")
    print("y1 =",((y2-y1)/(t2-t1))*(t-t1)+y1,"m")
    print("z1 =",((z2-z1)/(t2-t1))*(t-t1)+z1,"m")
    print("-----------------------")

t = 37.5
if (t1 <= t <= t2):
    print("At time",t,"seconds:")
    print("x2 =",((x2-x1)/(t2-t1))*(t-t1)+x1,"m")
    print("y2 =",((y2-y1)/(t2-t1))*(t-t1)+y1,"m")
    print("z2 =",((z2-z1)/(t2-t1))*(t-t1)+z1,"m")
    print("-----------------------")

t = 45.0
if (t1 <= t <= t2):
    print("At time",t,"seconds:")
    print("x3 =",((x2-x1)/(t2-t1))*(t-t1)+x1,"m")
    print("y3 =",((y2-y1)/(t2-t1))*(t-t1)+y1,"m")
    print("z3 =",((z2-z1)/(t2-t1))*(t-t1)+z1,"m")
    print("-----------------------")

t = 52.5
if (t1 <= t <= t2):
    print("At time",t,"seconds:")
    print("x4 =",((x2-x1)/(t2-t1))*(t-t1)+x1,"m")
    print("y4 =",((y2-y1)/(t2-t1))*(t-t1)+y1,"m")
    print("z4 =",((z2-z1)/(t2-t1))*(t-t1)+z1,"m")
    print("-----------------------")

t = 60.0
if (t1 <= t <= t2):
    print("At time",t,"seconds:")
    print("x5 =",((x2-x1)/(t2-t1))*(t-t1)+x1,"m")
    print("y5 =",((y2-y1)/(t2-t1))*(t-t1)+y1,"m")
    print("z5 =",((z2-z1)/(t2-t1))*(t-t1)+z1,"m")