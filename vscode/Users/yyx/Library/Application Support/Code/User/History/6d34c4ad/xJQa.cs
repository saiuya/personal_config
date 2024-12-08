using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;


public class UserFreeMove : MonoBehaviour
{
    public Transform controlSphere;
    private Vector3 targetPosition;

    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        targetPosition = new Vector3(controlSphere.position.x, controlSphere.position.y, controlSphere.position.z + 0.3f);
        transform.DOMove(targetPosition, 1);

    }
}
