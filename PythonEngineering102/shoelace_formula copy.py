# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   Chapter 9 Shoelace Formula
# Date:         17 October 2022


def getpoints(inp):
    ### Splits list into strings of points
    splitPoints = inp.split()
    
    ### creates 2d list where we'll store points
    pointList = [[0, 0] for i in range(len(splitPoints))]
    
    ### starts loop where I will find where the comma is, assign the part from before to the x value, and assign the part from after to the y value
    for i in range(len(splitPoints)):
        pointList[i][0] = int(splitPoints[i][0:splitPoints[i].index(',')])
        pointList[i][1] = int(splitPoints[i][splitPoints[i].index(',')+1:len(splitPoints[i])])
    
    return pointList

def cross(pointOne, pointTwo):
    ### returns cross product
    return (pointOne[0]*pointTwo[1] - pointOne[1]*pointTwo[0])
    
def shoelace(pointList):
    area = 0
    ### for loop adds together cross products for every point pair. It starts with -1 and 0, and goes up to the end of the point list
    for i in range(len(pointList)):
        area += cross(pointList[i-1], pointList[i])/2
    return area

def main():
    ### gets input
    inp = input("Please enter the vertices: ")
    ### gets answer
    answer = shoelace(getpoints(inp))
    ### prints out answer
    print(f'The area of the polygon is {answer}')

if __name__ == '__main__':
    main()