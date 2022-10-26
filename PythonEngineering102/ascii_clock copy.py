# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch, Felipe Martinez, Mayank Kulkarni, John Pokorny
# Section:      577
# Assignment:   Chapter 8 Ascii clock
# Date:         13 October 2022

# Gets input and assigns it to variable inp
inp = input("Enter the time: ")
print()

# My lists function which takes in a character and returns a 2D array for that specific character. In hindsight I shouldve made it a 1d array with many strings for each line
def lists(character):
    # Assigns returnList to characters that will be returned
    if character == "0":
        returnList = [["0", "0", "0"], ["0", " ", "0"], ["0", " ", "0"], ["0", " ", "0"], ["0", "0", "0"]]
    elif character == "1":
        returnList = [[" ", "1", " "], ["1", "1", " "], [" ", "1", " "], [" ", "1", " "], ["1", "1", "1"]]
    elif character == "2":
        returnList = [["2", "2", "2"], [" ", " ", "2"], ["2", "2", "2"], ["2", " ", " "], ["2", "2", "2"]]
    elif character == "3":
         returnList = [["3", "3", "3"], [" ", " ", "3"], ["3", "3", "3"], [" ", " ", "3"], ["3", "3", "3"]]
    elif character == "4":
         returnList = [["4", " ", "4"], ["4", " ", "4"], ["4", "4", "4"], [" ", " ", "4"], [" ", " ", "4"]]
    elif character == "5":
         returnList = [["5", "5", "5"], ["5", " ", " "], ["5", "5", "5"], [" ", " ", "5"], ["5", "5", "5"]]
    elif character == "6":
         returnList = [["6", "6", "6"], ["6", " ", " "], ["6", "6", "6"], ["6", " ", "6"], ["6", "6", "6"]]
    elif character == "7":
         returnList = [["7", "7", "7"], [" ", " ", "7"], [" ", " ", "7"], [" ", " ", "7"], [" ", " ", "7"]]
    elif character == "8":
         returnList = [["8", "8", "8"], ["8", " ", "8"], ["8", "8", "8"], ["8", " ", "8"], ["8", "8", "8"]]
    elif character == "9":
         returnList = [["9", "9", "9"], ["9", " ", "9"], ["9", "9", "9"], [" ", " ", "9"], ["9", "9", "9"]]
    elif character == ":":
         returnList = [[" "], [ ":"], [" "], [":"], [" "]]
    # returns the list corresponding to the appropriate character
    return returnList

# First for loop range is 5 because chars are 5 tall, and for each line it asks the lists function for the array of each character in inp, and finds the element of that array that corresponds to the current line
try:
    for i in range(5):
        for j in inp:
            print("".join(lists(j)[i]), end=" ")
        print()
except:
    print("\nEntered Invalid character")
    
    

    
    