# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   1.11 Lab Using Variables
# Date:         1 September 2022

from math import *
#hi
mass = 3
acceleration = 5.5
print("Force is", mass * acceleration, "N")

distance = 0.025
scatteringAngle = 25
print("Wavelength is", 2 * distance * sin(scatteringAngle*pi/180), "nm")

days = 3
halfLife = 3.8
initialAmount = 5
print("Radon-222 left is" ,initialAmount *(2**(-days/halfLife)),"g")

moles = 5
volume = 0.25
temperature = 415
gasConstant = 8.314
print("Pressure is",(((moles*gasConstant*temperature)/volume)/1000), "kPa")