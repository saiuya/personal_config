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
        targetPosition = new Vector3(user.position.x, user.position.y, user.position.z + 0.3f);
        targetPosition = transform.position - (user.position + distenceOfUserAndControlSphere);
        user.DOBlendableMoveBy(targetPosition, 0.5f);

    }
}
