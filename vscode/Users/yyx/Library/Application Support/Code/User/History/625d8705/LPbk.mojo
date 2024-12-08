fn greet(name: String) -> String:
    greeting = "Hello, " + name + "!"
    return greeting

fn  main():
    name = "John"
    greeting = greet(name)
    print(greeting)