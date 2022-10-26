#include <stdio.h>
#include <math.h>
int main(){
    //Intro Statement
    printf("This shows the evaluation of (x^2-1)/(x-1) evaluated close to x=1\n");
    printf("My guess is 2\n");

    //Math
    float x = 1.1;
    printf("%10.10f\n",(pow(x, 2)-1)/(x-1));
    x = 1.01;
    printf("%10.10f\n",(pow(x, 2)-1)/(x-1));
    x = 1.001;
    printf("%10.10f\n",(pow(x, 2)-1)/(x-1));
    x = 1.0001;
    printf("%10.10f\n",(pow(x, 2)-1)/(x-1));
    x = 1.00001;
    printf("%10.10f\n",(pow(x, 2)-1)/(x-1));
    x = 1.000001;
    printf("%10.10f\n",(pow(x, 2)-1)/(x-1));
    x = 1.0000001;
    printf("%10.10f\n",(pow(x, 2)-1)/(x-1));
    long double y = 1.00000001;
    printf("%10.10lf\n",(pow(y, 2)-1)/(y-1.0));

    //Conclusion
    printf("\nMy guess was good.");
}