#include <iostream>
#include <cstdio>
using namespace std;

int main() {
    int a;
    long long b;
    char c;
    float d;
    double f;

    scanf("%d %ld %c %f %lf", &a, &b, &c, &d, &f);

    printf("%d\n%ld\n%c\n%.3f\n%.9lf", a, b, c, d, f);
    
    return 0;
}