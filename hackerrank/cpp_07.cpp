#include <stdio.h>

void update(int *a,int *b) {
    int c, d;

    c = *a;
    d = *b;

    *a = c+d;
    c-d<0 ? *b = -1*(c-d) : *b = c-d;
}

int main() {
    int a, b;
    int *pa = &a, *pb = &b;
    
    scanf("%d %d", &a, &b);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}