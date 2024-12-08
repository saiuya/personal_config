

public class FibonacciTest {

  // 递归实现斐波那契数列
  public static int fib(int n) {
    if (n <= 1) {
      return n;
    } else {
      return fib(n - 1) + fib(n - 2);
    }
  }

  // 测试性能
  public static void main(String[] args) {
    long startTime = System.currentTimeMillis(); // 获取当前时间
    int result = fib(50); // 计算第30个斐波那契数
    long endTime = System.currentTimeMillis(); // 计算结束时间

    System.out.println("Result: " + result);
    System.out.println("Time taken: " + (endTime - startTime) + " ms"); // 输出时间，单位为毫秒
  }
}
