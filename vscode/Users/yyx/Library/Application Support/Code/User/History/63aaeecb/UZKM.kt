import kotlinx.coroutines.*

fun main() = runBlocking {
    val job = launch {
        println("开始")
        delay(5000) // 延迟 5 秒（代替 Thread.sleep）
        println("结束")
    }
    job.join() // 等待协程结束
}

// fun main() {
//     val runnable =
//         Runnable {
//             println("开始")
//             Thread.sleep(5000) // 延迟一秒
//             println("结束")
//         }

//     Thread
//         .ofVirtual()
//         .name("java_virtual_thread_in_kotlin")
//         .start(runnable)
//         .join() // 等待线程结束
// }



