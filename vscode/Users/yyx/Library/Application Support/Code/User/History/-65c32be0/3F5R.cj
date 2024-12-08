package test

// 假设仓颉支持静态函数定义及协程功能
func fib(n: Int): Int {
    if (n <= 1) {
        return n
    }
    return fib(n - 1) + fib(n - 2)
}

// 测试性能的主函数
main() {
    let startTime = System.now() // 获取当前时间
    let result = fib(30)         // 调用斐波那契函数计算第30个数
    let endTime = System.now()   // 计算结束时间

    println("Result: ", result)
    println("Time taken: ", (endTime - startTime), "ms")
}

