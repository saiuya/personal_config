using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class ReturnOrigin : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void ControlToReturnOrigin()
    {
        transform.DOMove(new Vector3(0.3f, 0, -0.3f), 1);
    }
}
