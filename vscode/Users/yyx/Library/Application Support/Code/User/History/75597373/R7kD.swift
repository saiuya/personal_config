import Foundation

// 递归实现斐波那契数列
func fib(_ n: Int) -> Int {
  if n <= 1 {
    return n
  } else {
    return fib(n - 1) + fib(n - 2)
  }
}

// 测试性能
let startTime = CFAbsoluteTimeGetCurrent()  // 获取当前时间
let result = fib(50)  // 计算第30个斐波那契数
let endTime = CFAbsoluteTimeGetCurrent()  // 计算结束时间

print("Result: \(result)")
print("Time taken: \(endTime - startTime)s")  // 输出时间，单位为秒

