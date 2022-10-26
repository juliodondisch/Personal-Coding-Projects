# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   5.3 Risk Calculation
# Date:         20 September 2022

from math import e

### Get Input From User ###

sexFemale = bool(input("Enter your sex (M/F): ").upper() == "F")

ageIn = float(input("Enter your age (years): "))

bmiIn = float(input("Enter your BMI: "))

hypertensionIn = bool(input("Are you on medication for hypertension (Y/N)? ").upper() == "Y")

steroidsIn = bool(input("Are you on steroids (Y/N)? ").upper() == "Y")

smokesIn = bool(input("Do you smoke cigarettes (Y/N)? ").upper() == "Y")

#only need to know used to smoke if they aren't smoker
if not smokesIn:
    usedToSmokeIn = bool(input("Did you used to smoke (Y/N)? ").upper() == "Y")

famHistoryIn = bool(input("Do you have a family history of diabetes (Y/N)? ").upper() == "Y")
# only need to know sibling and parent history if theres family history
if famHistoryIn:
    bothParentSiblingIn = bool(input("Both parent and sibling (Y/N)? ").upper() == "Y")


### If statements to assign correct values for calculations ###

# Sex. Female = .879, Male = 0
sex = 0
if sexFemale:
    sex = 0.879

# BMI. Under 25 = 0, 25-27.49 = 0.699, 27.5 - 29.99 = 1.97, >=30 = 2.518
bmi = 0
if 25 <= bmiIn < 27.5:
    bmi = 0.699
elif 27.5 <= bmiIn < 30:
    bmi = 1.97
elif bmiIn >= 30:
    bmi = 2.518

# Hypertension Meds. Y = 1.222, N = 0
hypertension = 0
if hypertensionIn:
    hypertension = 1.222

# Steroids. Y = 2.191, N = 0
steroids = 0
if steroidsIn:
    steroids = 2.191

# Smoker. Non-smoker = 0, Used to smoke = -0.218, Smoker = 0.855
smoker = 0
if smokesIn:
    smoker = 0.855
elif usedToSmokeIn:
    smoker = -0.218

# Family History. None = 0, Parent or sibling = .728, Parent and sibling = .753
famHistory = 0
if famHistoryIn:
    if bothParentSiblingIn:
        famHistory = 0.753
    else:
        famHistory = 0.728
    

### Risk Calculation ###
n = 6.322 + sex - 0.063*ageIn - bmi - hypertension - steroids - smoker - famHistory
risk = 100/(1+e**n)
print(f"Your risk of developing type-2 diabetes is {risk:.1f}%")