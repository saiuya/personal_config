

fun main() {
    Thread
        .ofVirtual()
        .name("didispace-virtual-thread")
        .start(runnable)
}
