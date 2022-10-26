#include <stdio.h>
#include <math.h>
int main(){
    float mass = 3;
    float acceleration = 5.5;
    float distance = 0.025;
    float angle = 25;
    float days = 3;
    float initialAmount = 5;
    float halfLife = 3.8;
    float moles = 5;
    float volume = 0.25;
    float temperature = 415;
    float idealGasConstant = 8.314;
    printf("Force is %g %s \n", mass*acceleration,"N");
    printf("Wavelength is %lf %s \n", 2*distance*sin(25*M_PI/180),"nm");
    printf("Radon-222 left is %lf %s \n", initialAmount*pow(2,-days/halfLife),"g");
    printf("Force is %g %s \n", moles*temperature*idealGasConstant/volume/1000,"kPa");
}