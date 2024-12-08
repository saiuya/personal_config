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
    double startTime = System.currentTimeMillis();
    int result = fibonacci(n);
    double endTime = System.currentTimeMillis();
    double duration = (endTime - startTime)/1000;
    System.out.println("The result is: " + result);
    System.out.println("Time taken in seconds: " + duration);
  }
}