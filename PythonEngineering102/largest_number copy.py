# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   4.16 Largest Number
# Date:         13 September 2022
a = float(input("Enter number 1: "))
print('')
b = float(input("Enter number 2: "))
print('')
c = float(input("Enter number 3: "))
print('')

# hi this is le comment :)
if a > b and a > c:
    print(f"The largest number is {a:.1f}")
elif b > c:
    print(f"The largest number is {b:.1f}")
else:
    print(f"The largest number is {c:.1f}")