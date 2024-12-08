use jni::sys::{jint, jobject, };

#[no_mangle]
pub extern "C" fn add(a: i32, b: i32) -> i32 {
    a + b
}
#[no_mangle]
pub extern "C" fn put(a: jstring) -> i64 {
    println!("a is {}", a);

    return 99;
}
