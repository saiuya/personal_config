package org.example

import jnr.ffi.LibraryLoader

object App {
    @JvmStatic
    fun main(args: Array<String>) {
        System.setProperty(
            "java.library.path",
            System.getProperty("user.dir") + "/app/src/main/jniLibs",
        )
        val libc = LibraryLoader.create(LibRst::class.java).load("add")
        println(libc.add(4, 2000))
        println("获得的数字: " + libc.puts("你好啊"))
        println("相对路径Root: " + System.getProperty("user.dir"))
    }
}

interface LibRst {
    fun add(
        a: Int,
        b: Int,
    ): Int

    fun puts(s: String): Int
}
