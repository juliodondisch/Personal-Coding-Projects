# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   1.12 Lab Still More Linear Interpolation
# Date:         6 September 2022

from math import *
#hi
t1 = float(input("Enter time 1: "))
print('')
x1 = float(input("Enter the x position of the object at time 1: "))
print('')
y1 = float(input("Enter the y position of the object at time 1: "))
print('')
z1 = float(input("Enter the z position of the object at time 1: "))
print('')

t2 = float(input("Enter time 2: "))
print('')
x2 = float(input("Enter the x position of the object at time 2: "))
print('')
y2 = float(input("Enter the y position of the object at time 2: "))
print('')
z2 = float(input("Enter the z position of the object at time 2: "))
print('')

t = t1 + 0*(t2-t1)/4

if (t1 <= t <= t2):
    print(f"At time {t:.2f} seconds the object is at ({((x2-x1)/(t2-t1))*(t-t1)+x1:.3f}, {((y2-y1)/(t2-t1))*(t-t1)+y1:.3f}, {((z2-z1)/(t2-t1))*(t-t1)+z1:.3f})")

t = t1 + 1*(t2-t1)/4

if (t1 <= t <= t2):
    print(f"At time {t:.2f} seconds the object is at ({((x2-x1)/(t2-t1))*(t-t1)+x1:.3f}, {((y2-y1)/(t2-t1))*(t-t1)+y1:.3f}, {((z2-z1)/(t2-t1))*(t-t1)+z1:.3f})")

t = t1 + 2*(t2-t1)/4

if (t1 <= t <= t2):
    print(f"At time {t:.2f} seconds the object is at ({((x2-x1)/(t2-t1))*(t-t1)+x1:.3f}, {((y2-y1)/(t2-t1))*(t-t1)+y1:.3f}, {((z2-z1)/(t2-t1))*(t-t1)+z1:.3f})")

t = t1 + 3*(t2-t1)/4

if (t1 <= t <= t2):
    print(f"At time {t:.2f} seconds the object is at ({((x2-x1)/(t2-t1))*(t-t1)+x1:.3f}, {((y2-y1)/(t2-t1))*(t-t1)+y1:.3f}, {((z2-z1)/(t2-t1))*(t-t1)+z1:.3f})")

t = t1 + 4*(t2-t1)/4

if (t1 <= t <= t2):
    print(f"At time {t:.2f} seconds the object is at ({((x2-x1)/(t2-t1))*(t-t1)+x1:.3f}, {((y2-y1)/(t2-t1))*(t-t1)+y1:.3f}, {((z2-z1)/(t2-t1))*(t-t1)+z1:.3f})")