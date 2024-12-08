package test

import std.time.MonoTime

// 假设仓颉支持静态函数定义及协程功能
func fib(n: Int): Int {
    if (n <= 1) {
        return n
    }
    return fib(n - 1) + fib(n - 2)
}

// 测试性能的主函数
main() {
    let start = MonoTime.now()
    let num = fib(30)         // 调用斐波那契函数计算第30个数
    let end = MonoTime.now()
    let result = end - start

    println("Result: ${num}",)
    println("Time taken: ${result}ms")
}

