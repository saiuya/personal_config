#[no_mangle]
pub extern "C" fn add(a: i32, b: i32) -> i32 {
    a + b
}
#[no_mangle]
pub extern "C" fn put(a: &str) -> i64 {
    println!("a is {}", a);
    return 99;
}
