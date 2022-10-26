# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   7.25 Pig Latin
# Date:         4 October 2022

### Take input ###
inp = input("Enter word(s) to convert to Pig Latin: ")

### Turn input into list of strings with split() function ###
wordList = inp.split()

### Create Piglatin Char for output
pigLatin = ''

### Loop through wordList
for x in wordList:
    ### add yay at end if vowel start
    if x.startswith('a') or x.startswith('e') or x.startswith('i') or x.startswith('o') or x.startswith('u') or x.startswith('y'):
        pigLatin += f'{x}yay '
    
    ### if consonant start check for index of first vowel, move first consonants to end, add ay to end
    else:
        vowelIndex = len(x)
        if x.find('a') != -1:
            vowelIndex = x.find('a')
        if x.find('e') != -1 and x.find('e') < vowelIndex:
            vowelIndex = x.find('e')
        if x.find('i') != -1 and x.find('i') < vowelIndex:
            vowelIndex = x.find('i')
        if x.find('o') != -1 and x.find('o') < vowelIndex:
            vowelIndex = x.find('o')
        if x.find('u') != -1 and x.find('u') < vowelIndex:
            vowelIndex = x.find('u')
        if x.find('y') != -1 and x.find('y') < vowelIndex:
            vowelIndex = x.find('y')
        pigLatin += f'{x[vowelIndex:len(x)]+x[0:vowelIndex]}ay '

### remove end space and print output
print(f'In Pig Latin, "{inp}" is: {pigLatin[0:len(pigLatin)-1]}')