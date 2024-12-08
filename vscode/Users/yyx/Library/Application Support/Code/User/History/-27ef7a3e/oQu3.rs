#[no_mangle]
pub extern "C" fn add(a: i32, b: i32) -> i32 {
    a + b
}
pub extern "C" fn put(a: String) -> String {
    println!("a is {}", a);
    return "我是字符串返回值".to_string();
}
