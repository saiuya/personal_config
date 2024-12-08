use std::ffi::{c_char, CStr, CString};
use std::os::raw::*;
#[no_mangle]
pub extern "C" fn add(a: i32, b: i32) -> i32 {
    a + b
}
#[no_mangle]
extern "C" fn puts(name: *const c_char) -> *const c_char {
    let cstr: &CStr = unsafe { CStr::from_ptr(name) };
    cstr.to_string_lossy().to_string();
}

pub fn puts(name: &str) -> String {
    let name_cstr = CString::new(name).unwrap();
    let cstr = unsafe { CStr::from_ptr(getenv(name_cstr.as_ptr())) };
    cstr.to_string_lossy().to_string()
}
