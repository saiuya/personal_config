using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstActive : MonoBehaviour
{
    // Start is called before the first frame update
    private Material GM_mat;
    // Start is called before the first frame update
    void onEnable()
    {
        GM_mat = GetComponent<MeshRenderer>().material;
        GM_mat.EnableKeyword("_Predication");
    }

    void start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }
}
