#include <stdio.h>
#include <math.h>
int main(){
    //Declaring Vars
    float tOne = 10;
    float pOne = 2026;
    float tTwo = 55;
    float pTwo = 23026;
    float tPartOne = 25;
    float tPartTwo = 300;
    float radius = 6745;

    //Part 1
    if(tOne <= tPartOne && tTwo >= tPartOne){
        printf("For t = %f minutes, the position p = %f kilometers\n", tPartOne, ((pTwo-pOne)/(tTwo-tOne))*(tPartOne-tOne)+pOne);
    }
    else{
        printf("For t = %f minutes, the position p = %f kilometers\n", tPartOne, (((pTwo-pOne)/(tTwo-tOne))*(tPartOne-tOne)+pOne) - (floor((((pTwo-pOne)/(tTwo-tOne))*(tPartOne-tOne)+pOne) / (2*M_PI*radius)) * radius));
    }

    //Part 2
    if(tOne <= tPartTwo && tTwo >= tPartTwo){
        printf("For t = %f minutes, the position p = %f kilometers\n", tPartTwo, ((pTwo-pOne)/(tTwo-tOne))*(tPartTwo-tOne)+pOne);
    }
    else{
        printf("For t = %f minutes, the position p = %f kilometers", tPartTwo, (((pTwo-pOne)/(tTwo-tOne))*(tPartTwo-tOne)+pOne) - (floor((((pTwo-pOne)/(tTwo-tOne))*(tPartTwo-tOne)+pOne) / (2*M_PI*radius)) * 2*M_PI*radius));
    }
}