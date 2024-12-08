use std::ffi::{c_char, CStr};
use std::os::raw::c_char;
#[no_mangle]
pub extern "C" fn add(a: i32, b: i32) -> i32 {
    a + b
}
#[no_mangle]
extern "C" fn puts(name: *const c_char) -> c_int {
    let cstr: &CStr = unsafe { CStr::from_ptr(name) };
    let aaa: String = cstr.to_string_lossy().to_string();
    println!("rust里打印: {}", aaa);
    12345
}
