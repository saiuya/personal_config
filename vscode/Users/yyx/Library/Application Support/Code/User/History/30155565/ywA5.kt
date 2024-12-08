/**
 * author:xingHai.zhao(CSDN-深海呐)
 * duty: 协程举例
 */
@ExperimentalCoroutinesApi
fun main(args: Array<String>) {
    Test().test()
}
 
class Test {
 
    @ExperimentalCoroutinesApi
    fun test() {
        Thread {
            println("进入线程")
            GlobalScope.launch(Dispatchers.Unconfined) {
                println("协程1开始执行了！！！")
                timeConsuming()
            }
            println("到达线程中间")
            GlobalScope.launch(Dispatchers.Unconfined) {
                println("协程2开始执行了！！！")
            }
            while (true) {
                //模拟安卓主线程，防止线程死亡
            }
        }.start()
    }
 
    /**
     * author:xingHai.zhao
     * duty:模拟耗时方法
     */
    private suspend fun timeConsuming() {
        println("进入耗时任务,并遇到阻塞 -- -- -- ")
        delay(100)
        println("耗时任务开始执行 -- -- -- ")
    }
}