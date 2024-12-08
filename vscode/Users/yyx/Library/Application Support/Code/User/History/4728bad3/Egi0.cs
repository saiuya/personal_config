using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.Scripting;
using UnityEngine.Rendering;

[Preserve] // 确保该脚本被打包进程序
public class SkipStartLogo
{
    // StartLogo启动之前执行此方法
    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSplashScreen)]
    private static void Run()
    {
        Task.Run(() =>
        {
            SplashScreen.Stop(SplashScreen.StopBehavior.StopImmediate);
        });
    }
}