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
    private Vector3 origin;

    // Start is called before the first frame update
    void Start()
    {
        // distenceOfUserAndControlSphere = transform.localPosition - user.localPosition;
        origin = transform.localPosition;
    }

    // Update is called once per frame
    void Update()
    {
        // origin = new Vector3(user.localPosition.x, user.localPosition.y, user.localPosition.z + 0.3f);
        targetPosition = transform.localPosition - origin;
        user.DOBlendableMoveBy(targetPosition, 10f);

    }
}
