use std::ffi::{c_char, CStr, CString};
use std::os::raw::*;
#[no_mangle]
pub extern "C" fn add(a: i32, b: i32) -> i32 {
    a + b
}
#[no_mangle]
pub extern "C" fn put(a: Cstring) -> c_int {
    println!("a is {}", a);

    return 12345;
}