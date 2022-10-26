# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   6.12 Pyramid Area Part 2
# Date:         27 September 2022

length = float(input("Enter the side length in meters: "))
layers = int(input("Enter the number of layers: "))
print(f"You need {(length*layers)**2*(3**(1/2)/4) + 3*((length)**2)*((layers-1)/2+1)*layers:.2f} m^2 of gold foil to cover the pyramid")

### Get inputs ###

### add top foil amount ###
#foil = (length*layers)**2*(sqrt(3)/4)

### Add side foil amount ###
#foil += 3*((length)**2)*((layers-1)/2+1)*layers

### print out final amount ###