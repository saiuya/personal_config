
fun main() {
    // 创建VirtualThread:
    Thread.ofVirtual().unstarted(() -> {
        System.out.println("Start virtual thread...");
        Thread.sleep(1000);
        System.out.println("End virtual thread.");
    });
    // 运行:
    vt.start();
}
