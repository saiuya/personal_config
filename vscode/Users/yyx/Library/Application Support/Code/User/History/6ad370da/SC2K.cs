using System.Collections;
using System.Collections.Generic;
using DG.Tweening;
using UnityEngine;


public class TouchMoving : MonoBehaviour
{

    public Transform user;
    public Transform anchorParent;

    private float Speed = 30f;

    // shurijo
    private Transform ruiquanmen;
    private Transform ruiquanmen_above;
    private Transform fengshenmen;
    private Transform fengshenmen_above;
    private Transform zhengdian;
    private Transform zhengdian_above;
    private Transform dongtai;
    private Transform dongtai_above;

    // shikinjo
    private Transform wumen;
    private Transform wumen_above;
    private Transform taihedian;
    private Transform taihedian_above;
    private Transform qianqinggong;
    private Transform qianqinggong_above;
    private Transform shenwumen;
    private Transform shenwumen_above;

    private Vector3[] path;

    void Start()
    {
        foreach (Transform child in anchorParent)
        {
            // 检查子物体的名称是否匹配
            if (child.name == "shurijo")
            {
                // 获取子物体的世界位置并存储在变量中
                ruiquanmen = child.GetChild(0);
                ruiquanmen_above = child.GetChild(1);
                fengshenmen = child.GetChild(2);
                fengshenmen_above = child.GetChild(3);
                zhengdian = child.GetChild(4);
                zhengdian_above = child.GetChild(5);
                dongtai = child.GetChild(6);
                dongtai_above = child.GetChild(7);

            }
            else if (child.name == "shikinjo")
            {
                // 获取子物体的世界位置并存储在变量中
                wumen = child.GetChild(0);
                wumen_above = child.GetChild(1);
                taihedian = child.GetChild(2);
                taihedian_above = child.GetChild(3);
                qianqinggong = child.GetChild(4);
                qianqinggong_above = child.GetChild(5);
                shenwumen = child.GetChild(6);
                shenwumen_above = child.GetChild(7);
            }
            else
            {
                Debug.LogError("没有找到shorijo或者shikinjo");
            }
        }

        path = new Vector3[] {
            // shurijo
            ruiquanmen_above.position,
            fengshenmen_above.position,
            zhengdian_above.position,
            dongtai_above.position,
            // shikinjo
            wumen_above.position,
            taihedian_above.position,
            qianqinggong_above.position,
            shenwumen_above.position,
        };

    }

    void Update()
    {
    }

    // 寻找距离当前位置最近的above点 (废弃)
    private Vector3 FindClosestVector(Vector3 userPosition, Vector3[] abovePositions)
    {
        if (abovePositions == null || abovePositions.Length == 0)
        {
            throw new System.ArgumentException("The array abovePositions must contain at least one element.");
        }

        Vector3 closestVector = abovePositions[0];
        float shortestDistance = Vector3.Distance(userPosition, closestVector);

        foreach (Vector3 vector in abovePositions)
        {
            float distance = Vector3.Distance(userPosition, vector);
            if (distance < shortestDistance)
            {
                shortestDistance = distance;
                closestVector = vector;
            }
        }

        return closestVector;
    }


    // // 出发点和结束点之间的上半圆的采样点
    // public static Vector3[] SamplePointsOnUpperSemiCircle(Vector3 startPoint, Vector3 endPoint)
    // {
    //     const int sampleCount = 50;
    //     Vector3[] sampledPoints = new Vector3[sampleCount];

    //     // 计算圆的中心点和半径
    //     Vector3 center = (startPoint + endPoint) / 2;
    //     float radius = Vector3.Distance(startPoint, endPoint) / 2;

    //     // 计算连线的方向和垂直向量
    //     Vector3 direction = (endPoint - startPoint).normalized;
    //     Vector3 perpendicular = Vector3.Cross(direction, Vector3.up).normalized * radius;

    //     // 确保垂直向量在正确的方向上
    //     if (Vector3.Distance(center + perpendicular, startPoint) > Vector3.Distance(center - perpendicular, startPoint))
    //     {
    //         perpendicular = -perpendicular;
    //     }

    //     // 角度增量
    //     float angleIncrement = Mathf.PI / (sampleCount - 1);

    //     // 采样点
    //     for (int i = 0; i < sampleCount; i++)
    //     {
    //         float angle = i * angleIncrement;
    //         sampledPoints[i] = center + Mathf.Cos(angle) * radius * direction + Mathf.Sin(angle) * perpendicular;
    //     }

    //     return sampledPoints;
    // }



    /// <summary>
    /// 根据两个Vector3向量作为直径的端点，在上半圆上均匀采样50个点。
    /// </summary>
    /// <param name="start">起始向量。</param>
    /// <param name="end">结束向量。</param>
    /// <returns>包含50个采样点的Vector3数组。</returns>
    public Vector3[] SampleUpperHalfCircle(Vector3 start, Vector3 end)
    {
        // 计算中心点和半径
        Vector3 center = (start + end) / 2f;
        float radius = Vector3.Distance(start, end) / 2f;

        // 创建用于存储结果的数组
        Vector3[] samples = new Vector3[7];

        // 计算单位向量的方向
        // Vector3 direction = (end - start).normalized;

        // 计算垂直于方向向量的单位向量
        // Vector3 perpendicular = Vector3.Cross(Vector3.up, direction).normalized;

        // 当start位于end正上方 或 正下方时，直接移动到end

        // 从0到π采样6个点
        for (int i = 0; i <= 6; i++)
        {
            float radian = Mathf.PI * i / 6f; // 从0到π分别的弧度值
            Vector3 samplePoint;
            samplePoint.x = center.x + radius * Mathf.Cos(radian) * Mathf.Cos(0f);
            samplePoint.y = center.y + radius * Mathf.Sin(radian);
            samplePoint.z = center.z + radius * Mathf.Cos(radian) * Mathf.Sin(0f);
            samples[i] = samplePoint;
        }

        return samples;
    }




    public void GoTo_ruiquanmen()
    {
        // user.DOPath(new Vector3[] {
        //     user.position,
        //     FindClosestVector(user.position, path),
        //     ruiquanmen_above.position,
        //     ruiquanmen.position,
        // }, Speed, PathType.CatmullRom, PathMode.Full3D, 50)
        //             .SetOptions(false)
        //             .SetEase(Ease.OutQuint);

        var samples = SampleUpperHalfCircle(user.position, ruiquanmen.position);

        if (samples.Length == 0)
        {
            user.DOMove(ruiquanmen.position, 10f);
        }
        else
        {
            user.DOPath(samples, Speed, PathType.CatmullRom, PathMode.Full3D)
                        .SetOptions(false)
                        .SetEase(Ease.OutQuint);
        }

    }


    public void GoTo_fengshenmen()
    {
        user.DOPath(new Vector3[] {
            user.position,
            FindClosestVector(user.position, path),
            fengshenmen_above.position,
            fengshenmen.position,
        }, Speed, PathType.CatmullRom, PathMode.Full3D, 50)
            .SetOptions(false)
            .SetEase(Ease.OutQuint);
    }


    public void GoTo_zhengdian()
    {
        user.DOPath(new Vector3[] {
            user.position,
            FindClosestVector(user.position, path),
            zhengdian_above.position,
            zhengdian.position,
        }, Speed, PathType.CatmullRom, PathMode.Full3D, 50)
            .SetOptions(false)
            .SetEase(Ease.OutQuint);
    }


    public void GoTo_dongtai()
    {
        user.DOPath(new Vector3[] {
            user.position,
            FindClosestVector(user.position, path),
            dongtai_above.position,
            dongtai.position,
        }, Speed, PathType.CatmullRom, PathMode.Full3D, 50)
            .SetOptions(false)
            .SetEase(Ease.OutQuint);
    }


    public void GoTo_wumen()
    {
        user.DOPath(new Vector3[] {
            user.position,
            FindClosestVector(user.position, path),
            wumen_above.position,
            wumen.position,
        }, Speed, PathType.CatmullRom, PathMode.Full3D, 50)
            .SetOptions(false)
            .SetEase(Ease.OutQuint);
    }


    public void GoTo_taihedian()
    {
        user.DOPath(new Vector3[] {
            user.position,
            FindClosestVector(user.position, path),
            taihedian_above.position,
            taihedian.position,
        }, Speed, PathType.CatmullRom, PathMode.Full3D, 50)
            .SetOptions(false)
            .SetEase(Ease.OutQuint);
    }


    public void GoTo_qianqinggong()
    {
        user.DOPath(new Vector3[] {
            user.position,
            FindClosestVector(user.position, path),
            qianqinggong_above.position,
            qianqinggong.position,
        }, Speed, PathType.CatmullRom, PathMode.Full3D, 50)
            .SetOptions(false)
            .SetEase(Ease.OutQuint);
    }


    public void GoTo_shenwumen()
    {
        user.DOPath(new Vector3[] {
            user.position,
            FindClosestVector(user.position, path),
            shenwumen_above.position,
            shenwumen.position,
        }, Speed, PathType.CatmullRom, PathMode.Full3D, 50)
            .SetOptions(false)
            .SetEase(Ease.OutQuint);
    }



}
