# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   Chapter 8 Ascii clock
# Date:         25 October 2022

# This lists function which takes in a character and returns a 2D array for that specific character. In hindsight we shouldve made it a 1d array with many strings for each line
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
