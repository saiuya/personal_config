# Python Fibonacci Function
# from maturin import fibonacci
import time


# Python Fibonacci Function
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n - 1) + fibonacci(n - 2)


def test():
    n: In = 50  # Adjust this value as needed
    start_time = time.time()
    result = fibonacci(n)
    end_time = time.time()

    print(f"Fibonacci({n}) = {result}")
    print(f"Python execution time: {end_time - start_time} seconds")


test()
