using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;


public class UserFreeMove : MonoBehaviour
{
    public Transform controlSphere;
    private Vector3 controlSphereOrigin;
    private Vector3 speedVector;
    // Start is called before the first frame update
    void Start()
    {
        controlSphereOrigin = controlSphere.localPosition;
    }

    // Update is called once per frame
    void Update()
    {
        speedVector = controlSphere.localPosition - controlSphereOrigin;
        

    }
}
