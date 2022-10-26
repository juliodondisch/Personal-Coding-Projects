#include <stdio.h>
#include <math.h>
int main(){
    //Intro
    printf("Please enter the quantity to be converted: ");

    //Defines number, scans for a float, inputs value to number
    float number;
    scanf("%f", &number);

    //Print statements and Math
    printf("\n%.2f pounds of force is equivalent to %.2f Newtons", number, number*4.44822);
    printf("\n%.2f meters is equivalent to %.2f feet", number, number*3.28084);
    printf("\n%.2f atmospheres is equivalent to %.2f kilopascals", number, number*101.325);
    printf("\n%.2f watts is equivalent to %.2f BTU per hour", number, number*3.412142);
    printf("\n%.2f liters per second is equivalent to %.2f US gallons per minute", number, number*15.850323141489);
    printf("\n%.2f degrees Celsius is equivalent to %.2f degrees Farenheit", number, number*9/5 + 32);
}