import kotlin.system.measureTimeMillis

// 递归实现
fun fibonacciRecursive(n: Int): Long = if (n <= 1) n.toLong() else fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2)

fun main() {
    val n = 40 // 测试较大的 n 来感受递归的性能问题

    val timeRecursive =

        measureTimeMillis {
            println("Fibonacci($n) = ${fibonacciRecursive(n)}")
        }

    println("递归版本耗时: $timeRecursive 毫秒")
}
