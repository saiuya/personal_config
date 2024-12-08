using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class ReturnOrigin : MonoBehaviour
{
    private Vector3 localPosition;
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        localPosition = transform.localPosition;

    }

    public void ControlToReturnOrigin()
    {
        transform.DOMove(localPosition, 5);
    }
}
