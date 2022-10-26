# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   4.15 Boolean Expressions
# Date:         13 September 2022

############ Part A ############
inA = input("Enter True or False for a: ")
inB = input("Enter True or False for b: ")
inC = input("Enter True or False for c: ")

a = bool(inA == "True" or inA == "true" or inA == "t" or inA == "T")
b = bool(inB == "True" or inB == "true" or inB == "t" or inB == "T")
c = bool(inC == "True" or inC == "true" or inC == "t" or inC == "T")

############ Part B ############
print("a and b and c:", a and b and c)
print("a or b or c:", a or b or c)

############ Part C ############
print("XOR:", a ^ b)
print("Odd number:", (a and b and c) or ((a ^ b) ^ (c)))

############ Part D ############
print("Complex1:", (not (a and not b) or (not c and b)) and (not b) or (not a and b and not c) or (a and not b))
print("Complex2:", (not ((b or not c) and (not a or not c))) or (not (c or not (b and c))) or (a and not c) and (not a or (a and b 
and c) or (a and ((b and not c) or (not b)))))
print("Simple1:", not b and not a or not a and b and not c or a and not b)
print("Simple2:", not b and c or a and b or a and not b and not c)