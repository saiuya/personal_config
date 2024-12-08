using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using Oculus.Interaction.Input;


public class UserFreeMove : MonoBehaviour
{
    public Transform user;
    private Vector3 movingVector;

    private Vector3 ControlSphereOrigin;

    // Start is called before the first frame update
    void Start()
    {
        // distenceOfUserAndControlSphere = transform.localPosition - user.localPosition;
        ControlSphereOrigin = transform.localPosition;
    }

    // Update is called once per frame
    void Update()
    {
        // origin = new Vector3(user.localPosition.x, user.localPosition.y, user.localPosition.z + 0.3f);
        movingVector = transform.localPosition - ControlSphereOrigin;
        user.DOBlendableMoveBy(movingVector, 10f);

    }
}
