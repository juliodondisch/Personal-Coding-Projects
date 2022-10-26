# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   Chapter 7 Go Moves
# Date:         4 October 2022

from time import sleep

### Creates initial board
rows, columns = 16, 16
goBoard = [['.' for i in range(columns)] for j in range(rows)]

### Print board function for future easy use
def printBoard():
    print()
    for i in goBoard:
        print(' '.join(i))
    print()

### Function to check if space is taken. for easy future use
def isTaken(row, column):
    if goBoard[int(row)-1][int(column)-1] == '.':
        return bool(0)
    return bool(1)

### Make game true!
game = bool(1)

#### GAME BEGINS HERE ####
print("Welcome to Go! Place stones, capture enemy stones, and battle to the end! Filled circles represent Player 1's stones', and empty circles represent player 2's. Player 1 will go first. Enter rows and columns using numbers from 1-9. You can enter \"stop\" to end the game at any time. Your points will be tallied at the end of the game. Good luck!")
player = 1

###### GAME LOOP ######
while game:
    
    printBoard()
    ### Sets the character to represent stones to the appropriate one
    if player == 1:
        stoneCharacter = chr(9679)
    else:
        stoneCharacter = chr(9675)
    
    ### Player 1's turn first
    print(f"{stoneCharacter} Player {player}, its your turn!")
    
    ### Takes inputs for player 1
    row = input("Enter a row number: ")
    
    ### Checks whether input was stop for both inputs
    if row == "stop":
        game = bool(0)
        break
    ### Converts row into integer assuming it does not say stop
    row = int(row)
    
    ### check if row number is in range 1-9
    if not (0 < row <= rows):
        print("Invalid row. Try again!")
        sleep(2)
        continue
    
    ### Same as for rows but for columns
    column = input("Enter a column number: ")
    if column == "stop":
        game = bool(0)
        break
    column = int(column)
    if not (0 < column <= columns):
        print("Invalid column. Try again!")
        sleep(2)
        continue
    
    
    if isTaken(row, column) == bool(0):
        ### Replaces go board with correct character
        goBoard[row -1][column-1] = stoneCharacter
            
        ### toggles player
        if player == 1:
            player = 2
        else:
            player = 1
    else:
        print("Oops! That spot is taken. Try again!")
        sleep(2)

### formatting
sleep(1)
print()

###### SCORE CALCULATION ######
### Get user inputs to calculate final score
print("And thats game! Lets tally up your final score!")
sleep(1)
playerOneArea = int(input("\nPlayer 1, please enter the Area you have sorrounded:"))

playerOnePrisoners = int(input("Player 1, please enter the number of prisoners you captured:"))

playerTwoArea = int(input("\nPlayer 2, please enter the Area you have sorrounded:"))

playerTwoPrisoners = int(input("Player 2, please enter the number of prisoners you captured:"))


### Calculate scores from input
playerOneScore = playerOneArea - playerTwoPrisoners
playerTwoScore = playerTwoArea - playerOnePrisoners

### Find a winner!
print(f"\nPlayer 1's score was {playerOneScore}, and player 2's score was {playerTwoScore}")
sleep(1)

if playerOneScore > playerTwoScore:
    print("\nPlayer 1 wins! Congrats, you get a cookie!")
elif playerTwoScore > playerOneScore:
    print("\nPlayer 2 wins! Congrats, you get a cookie!")
else:
    print("\nIts a tie! How about a rematch?")