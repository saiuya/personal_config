interface LibRst {
    add(a: Int, b: Int): Int;
    puts(s: String): Int;
}

var libc: LibRst = LibraryLoader.create(LibRst.class).load("add");
System.out.println(libc.add(2, 2));
int pr = libc.puts("put");
System.out.println(pr);