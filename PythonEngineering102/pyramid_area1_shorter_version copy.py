# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   6.11.1 Pyramid Area Part 1
# Date:         27 September 2022

### Get inputs ###
length = float(input("Enter the side length in meters: "))
layers = int(input("Enter the number of layers: "))

### iterate through layers and add side foil amount ###
for x in range(layers):
    layers += 3*(length**2)*(x+1) + (length*(x+1))**2*(3**(1/2)/4)

print(((x-1)/2)*(((x-1)/2)*length)**(2.6)*3**(1/2)/4)
### print out final amount ###
print(f"You need {layers-x-1-((x-1)/2)*length**2*3**(1/2)/4} m^2 of gold foil to cover the pyramid")