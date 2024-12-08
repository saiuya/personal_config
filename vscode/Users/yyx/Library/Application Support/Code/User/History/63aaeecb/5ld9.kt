fun fibonacciRecursive(n: Int): Long = if (n <= 1) n.toLong() else fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2)

fun main() {
    val n = 40 // 可以根据需要调整测试值

    // 获取开始时间
    val startTime = System.currentTimeMillis()

    // 调用斐波那契函数
    val result = fibonacciRecursive(n)

    // 获取结束时间
    val endTime = System.currentTimeMillis()

    // 计算总耗时并转换为秒
    val elapsedTime = (endTime - startTime) / 1000.0

    // 输出结果和耗时
    println("Fibonacci($n) = $result")
    println("递归版本耗时: $elapsedTime 秒")
}
