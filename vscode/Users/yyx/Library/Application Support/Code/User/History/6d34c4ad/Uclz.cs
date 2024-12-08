using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;


public class UserFreeMove : MonoBehaviour
{
    public Transform user;
    private Vector3 targetPosition;

    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        targetPosition = new Vector3(transform.position.x, transform.position.y, transform.position.z + 0.3f);
        user.DOMove(targetPosition, 1);

    }
}
