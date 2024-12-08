using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class ReturnOrigin : MonoBehaviour
{
    private Vector3 position;
    // Start is called before the first frame update
    void Start()
    {
        position = transform.position;
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void ControlToReturnOrigin()
    {
        transform.DOMove(position, 1);
    }
}
