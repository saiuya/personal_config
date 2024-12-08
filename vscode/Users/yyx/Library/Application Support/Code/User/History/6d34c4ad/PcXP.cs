using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;


public class UserFreeMove : MonoBehaviour
{
    public Transform user;
    private Vector3 targetPosition;

    private Vector3 origin;

    // Start is called before the first frame update
    void Start()
    {
        origin = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        transform.position -
        targetPosition = new Vector3(transform.position.x, transform.position.y, transform.position.z - 0.3f);
        user.DOBlendableMoveBy(new Vector3(1, 1, 1), 0.5f);
        user.DOMove(targetPosition, 1);

    }
}
