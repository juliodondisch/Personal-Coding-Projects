#include <stdio.h>
#include <math.h>
int main(){
    //Declaring Vars
    float t1 = 12;
    float x1 = 8;
    float y1 = 6;
    float z1 = 7;

    float t2 = 85;
    float x2 = -5;
    float y2 = 30;
    float z2 = 9;

    float t = 30.0;

    //Math for Time 30
    t = 30;
    printf("At time %f seconds: \n", t);
    printf("x1 = %f m\n", ((x2-x1)/(t2-t1))*(t-t1)+x1);
    printf("y1 = %f m\n", ((y2-y1)/(t2-t1))*(t-t1)+y1);
    printf("z1 = %f m\n", ((z2-z1)/(t2-t1))*(t-t1)+z1);
    printf("-----------------------\n");

    //Math for Time 37.5
    t = 37.5;
    printf("At time %f seconds: \n", t);
    printf("x2 = %f m\n", ((x2-x1)/(t2-t1))*(t-t1)+x1);
    printf("y2 = %f m\n", ((y2-y1)/(t2-t1))*(t-t1)+y1);
    printf("z2 = %f m\n", ((z2-z1)/(t2-t1))*(t-t1)+z1);
    printf("-----------------------\n");

    //Math for Time 45
    t = 45;
    printf("At time %f seconds: \n", t);
    printf("x3 = %f m\n", ((x2-x1)/(t2-t1))*(t-t1)+x1);
    printf("y3 = %f m\n", ((y2-y1)/(t2-t1))*(t-t1)+y1);
    printf("z3 = %f m\n", ((z2-z1)/(t2-t1))*(t-t1)+z1);
    printf("-----------------------\n");

    //Math for Time 52.5
    t = 52.5;
    printf("At time %f seconds: \n", t);
    printf("x4 = %f m\n", ((x2-x1)/(t2-t1))*(t-t1)+x1);
    printf("y4 = %f m\n", ((y2-y1)/(t2-t1))*(t-t1)+y1);
    printf("z4 = %f m\n", ((z2-z1)/(t2-t1))*(t-t1)+z1);
    printf("-----------------------\n");

    //Math for Time 60
    t = 60;
    printf("At time %f seconds: \n", t);
    printf("x5 = %f m\n", ((x2-x1)/(t2-t1))*(t-t1)+x1);
    printf("y5 = %f m\n", ((y2-y1)/(t2-t1))*(t-t1)+y1);
    printf("z5 = %f m\n", ((z2-z1)/(t2-t1))*(t-t1)+z1);
    printf("-----------------------\n");

}