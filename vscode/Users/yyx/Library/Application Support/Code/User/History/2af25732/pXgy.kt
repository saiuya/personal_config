interface LibRst {
    add(a:int, b:int): Int;
    puts(s: String): Int;
}

LibRst libc = LibraryLoader.create(LibRst.class).load("add");
System.out.println(libc.add(2, 2));
int pr = libc.puts("put");
System.out.println(pr);