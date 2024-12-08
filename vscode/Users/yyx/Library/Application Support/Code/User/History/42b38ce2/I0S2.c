#include <stdio.h>
#include <time.h>

// 递归实现斐波那契数列
int fib(int n) {
    if (n <= 1) {
        return n;
    } else {
        return fib(n - 1) + fib(n - 2);
    }
}

// 测试性能
int main() {
    clock_t start, end;
    double cpu_time_used;
    
    start = clock(); // 获取当前时间
    
    int result = fib(50); // 计算第50个斐波那契数
    
    end = clock(); // 计算结束时间
    
    // 计算消耗的CPU时间
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC; // 转换为秒
    
    printf("Result: %d\n", result);
    printf("Time taken: %.2f ms\n", cpu_time_used);
    
    return 0;
}
