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



    public void GoTo_ruiquanmen()
    {
        user.DOPath(new Vector3[] {
            user.position,
            FindClosestVector(user.position, path),
            ruiquanmen_above.position,
            ruiquanmen.position,
        }, Speed, PathType.CatmullRom, PathMode.Full3D, 50)
                    .SetOptions(false)
                    .SetEase(Ease.OutQuint);
                    

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
