using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstActive : MonoBehaviour
{
    // Start is called before the first frame update
    // Start is called before the first frame update
    void Start()
    {
        this.gameObject.GetComponent<Renderer>().material.color = Color.yellow; //立方体变为黄色

    }

    void OnEnable()
    {
    }

    // Update is called once per frame
    void Update()
    {

    }
}