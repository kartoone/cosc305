#include <stdio.h>

int main() {
    int nums[10];
    int i;
    int total;
    for (i=0; i<10; i++) {
        nums[i] = i+1;
    }
    total = 0;
    for (i=0; i<10; i++) {
        total += nums[i];
    }
    printf("The sum of all the numbers in nums is: %d\n", total);
}