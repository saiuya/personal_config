use std::time::Instant;

fn fibonacci(n: u32) -> u32 {
    if n <= 1 {
        return n;
    }

    return fibonacci(n - 1) + fibonacci(n - 2);
}

fn main() {
    let n = 50; // 可以根据需要调整这个值
    let start = Instant::now();
    let result = fibonacci(n);
    let duration = start.elapsed();

    println!("Fibonacci({}) = {}", n, result);
    println!("Rust execution time: {:?}", duration);
}
