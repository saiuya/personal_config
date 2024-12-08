

fun mian() {
    println("Hello World!")
    // 生成一个斐波那契数列
    val fib = generateSequence(1L) { it + it - 1 }
}
