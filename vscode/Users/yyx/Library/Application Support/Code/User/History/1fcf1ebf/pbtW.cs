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
        localPosition = transform.localPosition;
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void ControlToReturnOrigin()
    {
        transform.DOLocalMove(localPosition, 1f);
    }
}
