interface LibRst {
    add(a: Int, b: Int): Int;
    puts(s: String): Int;
}


var libc: LibRst = LibraryLoader.create(LibRst.class).load("add");
println(libc.add(2, 2));
var pr: Int = libc.puts("put");
println(pr);