# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   7.26 Leet Speak
# Date:         4 October 2022

### get input
string = input("Enter some text: ")

### declare output variable
leetSpeak = ''

### create dictionary
dictionary = {'a': 4, 'e': 3, 'o': 0, 's': 5, 't': 7}

### loop through characters in string
for y in string:
    ### check if current character is in the dictionary. if it is, add the dictionary value instead of y to the output string
    if y in dictionary.keys():
        leetSpeak += str(dictionary[y])
    ### if its not in the dictionary, just add the character to the output variable unchanged
    else:
        leetSpeak += y

### print output
print(f'In leet speak, "{string}" is:\n{leetSpeak}')