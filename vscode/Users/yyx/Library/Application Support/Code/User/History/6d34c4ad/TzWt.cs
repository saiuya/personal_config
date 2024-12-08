using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using Oculus.Interaction.Input;


public class UserFreeMove : MonoBehaviour
{
    public Transform user;
    private Vector3 targetPosition;

    private Vector3 distenceOfUserAndControlSphere;

    // Start is called before the first frame update
    void Start()
    {
        distenceOfUserAndControlSphere = transform.localPosition - user.localPosition;
    }

    // Update is called once per frame
    void Update()
    {
        targetPosition = transform.position - (user.position + distenceOfUserAndControlSphere);
        // targetPosition = new Vector3(transform.position.x, transform.position.y, transform.position.z - 0.3f);
        user.DOBlendableMoveBy(targetPosition, 0.5f);
        user.DOMove(targetPosition, 1);

    }
}
