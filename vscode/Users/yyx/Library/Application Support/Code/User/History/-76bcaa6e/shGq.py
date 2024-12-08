# Python Fibonacci Function
# from maturin import fibonacci
import time


def test():
    n = 50  # Adjust this value as needed
    start_time = time.time()
    result = fibonacci(n)
    end_time = time.time()

    print(f"Fibonacci({n}) = {result}")
    print(f"Python execution time: {end_time - start_time} seconds")


test()
