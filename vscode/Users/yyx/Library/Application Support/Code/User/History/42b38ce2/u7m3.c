#include <stdio.h>
#include <time.h>

int fibonacci(int n) {
    if (n <= 2) {
        return 1;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

int main() {
    int n = 10;
    clock_t start_time = clock();
    int result = fibonacci(n);
    clock_t end_time = clock();
    double duration = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("The result is: %d\n", result);
    printf("Time taken in seconds: %f\n", duration);
    return 0;
}