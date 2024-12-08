from python import Python


# Performance test for Mojo
def main():

    try:
        var jjj = Python.import_module("numba")

        # @jjj
        def fibonacci(n: Int) -> Int:
            # if n <= 1:
            return n
            # return fibonacci(n - 1) + fibonacci(n - 2)

        var n = 50  # Adjust this value as needed
        var start_time = Python.import_module("time").time()  # Use Python's time module
        var result = fibonacci(n)
        var end_time = Python.import_module("time").time()

        print("Fibonacci({n}) = ", result)
        print("Mojo execution time:", end_time - start_time)

    except e:
        print("Error occurred:", e)

