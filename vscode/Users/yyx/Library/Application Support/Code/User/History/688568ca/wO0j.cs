using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstActive : MonoBehaviour
{
    // Start is called before the first frame update
    private Material GM_mat;
    // Start is called before the first frame update
    void Start()
    {
        GM_mat = GetComponent<MeshRenderer>().material;
        GM_mat.SetFloat("_Down_Alpha_Int", 0.1f);
        //GetComponent<MeshRenderer>().material.SetFloat("_Down_Alpha_Int", 0.1f);
    }

    // Update is called once per frame
    void Update()
    {

    }
}
