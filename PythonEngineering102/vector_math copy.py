# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   7.27 Vector Math
# Date:         4 October 2022

from math import sqrt

### gets inputs
inpVectorA = input("Enter the elements for vector A: ")
inpVectorB = input("Enter the elements for vector B: ")

### converts vector string inputs into vector integer lists
vectorA = [float(i) for i in inpVectorA.split()]
vectorB = [float(i) for i in inpVectorB.split()]

### Finds magnitude of vectors through sqrt(a^2 + b^2 + c^2)
print(f"The magnitude of vector A is {sqrt(sum([i**2 for i in vectorA])):.5f}")
print(f"The magnitude of vector B is {sqrt(sum([i**2 for i in vectorB])):.5f}")

### Finds a + b
print(f"A + B is {[vectorA[i]+vectorB[i] for i in range(len(vectorA))]}")

### Finds a - b
print(f"A - B is {[vectorA[i]-vectorB[i] for i in range(len(vectorA))]}")

### finds a dot b
print(f"The dot product is {sum([vectorA[i]*vectorB[i] for i in range(len(vectorA))]):.2f}")