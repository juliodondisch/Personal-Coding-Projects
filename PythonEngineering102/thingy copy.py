#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct 20 12:08:28 2022

@author: juliodondisch
"""

grades = ["Chase Ea             12345          23414          82.13          ", "Chase               12345          23414          82.13          ", "Chase               12345          23414          82.13          "]
#Create counters for first names Chase, and exam averages above 80

firstNamesChase = 0

examsAboveEighty = 0

# Loop through every single element in the grades array

for i in grades:
    if "Chase " == str(i[0:6]):

        firstNamesChase += 1

    grades = float(i[50:65])

    if grades > 80:

        examsAboveEighty += 1





print(f"There are {firstNamesChase} students with the first name Chase.")
print(f"There are {examsAboveEighty} students with an exam average above 80.")