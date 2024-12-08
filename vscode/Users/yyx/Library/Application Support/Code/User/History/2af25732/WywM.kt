package org.example

import jnr.ffi.LibraryLoader

object App {
    @JvmStatic
    fun main(args: Array<String>) {
        System.setProperty(
            "java.library.path",
            "/Users/yyx/Downloads/kotlin_test/app/src/main/jniLibs",
        )
        val libc = LibraryLoader.create(LibRst::class.java).load("add")
        println(libc.add(4, 2000))
//      val pr = libc.puts("put")
//      println(pr)
    }
}

interface LibRst {
    fun add(
        a: Int,
        b: Int,
    ): Int
//  fun puts(s: String?): Int
}
