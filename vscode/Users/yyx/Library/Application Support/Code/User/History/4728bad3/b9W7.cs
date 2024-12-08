


[Preserve] // 确保该脚本被打包进程序
public class SkipStartLogo
{
    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSplashScreen)]
    private static void Run()
    {
        Task.Run(() =>
        {
SplashScreen.Stop(Spl)
        })
    }
}