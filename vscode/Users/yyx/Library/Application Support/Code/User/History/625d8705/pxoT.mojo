from max import tensor


fn greet(name: String) -> String:
    greeting = "Hello, " + name + "!"
    return greeting


fn main():
    print(greeting)
    name = "John"
    greeting = greet(name)
