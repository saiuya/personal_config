std::os::raw
#[no_mangle]
pub extern "C" fn add(a: i32, b: i32) -> i32 {
    a + b
}
#[no_mangle]
pub extern "C" fn put(a: *char) -> jint {
    println!("a is {}", *a);

    return 99;
}
