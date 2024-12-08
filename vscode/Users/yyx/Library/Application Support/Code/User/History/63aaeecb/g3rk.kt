fun fibonacciRecursive(n: Int): Long = if (n <= 1) n.toLong() else fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2)

fun main() {
    // 创建VirtualThread:
Thread.ofVirtual().unstarted(() -> {
    System.out.println("Start virtual thread...");
    Thread.sleep(1000);
    System.out.println("End virtual thread.");
});
// 运行:
vt.start();
}
