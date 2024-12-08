from python import Python

fn fibonacci(n: Int) -> Int:
    if n <= 1:
        return n
    return fibonacci(n - 1) + fibonacci(n - 2)

# Performance test for Mojo
fn main():
    try:
        var n = 35  # Adjust this value as needed
        var start_time = Python.time.time()  # Use Python's time module
        var result = fibonacci(n)
        var end_time = Python.time.time()

        print(f"Fibonacci({n}) = {result}")
        print(f"Mojo execution time: {end_time - start_time} seconds")
    except e:
    print("Error occurred:", e)