# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   1.12 Using Input
# Date:         8 September 2022

from math import *
#Newtons
print("This program calculates the applied force given mass and acceleration")

mass = float(input("Please enter the mass (kg): "))
print("")
accel = float(input("Please enter the acceleration (m/s^2): "))
print("")

print(f"Force is {mass*accel:.1f} N")
print("")

#Wavelength
print("This program calculates the wavelength given distance and angle")

distance = float(input("Please enter the distance (nm): "))
angle = float(input("Please enter the angle (degrees): "))

print(f"Wavelength is {(2*distance*sin(angle*pi/180)):.4f} nm")
print("")

#Radon-222
print("This program calculates how much Radon-222 is left given time and initial amount")

days = float(input("Please enter the time (days): "))
initialAmount = float(input("Please enter the initial amount(g): "))
halfLife = 3.8

print(f"Radon-222 left is {initialAmount * (2**(-days/halfLife)):.2f} g")
print("")

#Pressure

print("This program calculates the pressure given moles, volume, and temperature")

moles = float(input("Please enter the number of moles: "))
volume = float(input("Please enter the volume (m^3): "))
temperature = float(input("Please enter the temperature (K): "))
gasConstant = 8.314
print('')

print(f"Pressure is {((moles*gasConstant*temperature)/volume/1000):.0f} kPa")