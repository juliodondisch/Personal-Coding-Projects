# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   4.18 How Many Gadgets
# Date:         19 September 2022

days = int(input("Please enter a positive value for day: "))
gadgets = 0

#Makes sure days is positive
if days >= 0:
    #First 10 days
    if days < 11:
        gadgets = days * 5

    #Next 50 days
    elif days < 61:
        gadgets = 50 + (days-10)*50

    #last 40 days where pruduction is descending
    elif days < 101:
        gadgets = 2550 - 1/2 * (days-60)**2 + 49.5*(days-60)
    
    else:
        gadgets = 3730
    
    print(f"The total number of gadgets produced on day {days} is {int(gadgets)}")
else:
    print("You entered an invalid number!")
#hi i am a comment ! :D