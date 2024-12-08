

fun main() {
    Thread
        .ofVirtual()
        .name("java_virtual_thread_in_kotlin")
        .start(runnable)
}
