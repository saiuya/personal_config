public class FibonacciTest {
  public static int fibonacci(int n) {
    if (n <= 2) {
      return 1;
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2);
    }

  }

  public static void main(String[] args) {
    int n = 50;
    long startTime = System.nanoTime();
    int result = fibonacci(n);
    long endTime = System.nanoTime();
    long duration = endTime - startTime;
    System.out.println("The result is: " + result);
    System.out.println("Time taken in nanoseconds: " + duration);
  }
}