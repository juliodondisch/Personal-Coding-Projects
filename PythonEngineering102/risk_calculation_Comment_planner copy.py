# By submitting this assignment, I agree to the following:
#   "Aggies do not lie, cheat, or steal, or tolerate those who do."
#   "I have not given or received any unauthorized aid on this assignment."
#
# Name:         Julio Dondisch
# Section:      577
# Assignment:   5.3 Risk Calculation
# Date:         19 September 2022

### Get Input From User ###


### If statements to assign correct values for calculations ###

# Sex. Female = .879, Male = 0

# BMI. Under 25 = 0, 25-27.49 = 0.699, 27.5 - 29.99 = 1.97, >30 = 2.518

# Hypertension Meds. Y = 1.222, N = 0

# Steroids. Y = 2.191, N = 0

# Smoker. Non-smoker = 0, Used to smoke = -0.218, Smoker = 0.855

# Family History. None = 0, Parent or sibling = .728, Parent and sibling = .753


### Risk Calculation ###
# Equation for N: n = 6.322 + sex - 0.063*age - BMI - hypertension - steroids - smoker - FamHistory

# Equation for Risk: risk = 100/(1+e**n)
