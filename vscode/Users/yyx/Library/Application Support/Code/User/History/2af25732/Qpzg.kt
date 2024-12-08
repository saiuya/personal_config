import jnr.ffi.LibraryLoader

object App {
    @JvmStatic
    fun main(args: Array<String>) {
        val libc: LibC =
            LibraryLoader
                .create(LibC::class.java)
                .load("c") // load the "c" library into the libc variable

        libc.puts("Hello World!") // prints "Hello World!" to console
    }
}

interface LibC {
    // A representation of libC in Java
    fun puts(s: String?): Int // mapping of the puts function, in C `int puts(const char *s);`
}
