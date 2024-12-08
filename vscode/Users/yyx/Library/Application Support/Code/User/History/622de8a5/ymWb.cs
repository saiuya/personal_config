using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Image : MonoBehaviour
{
    // Start is called before the first frame update
    public Image image;
    public Sprite sprite;

    private void Start()
    {
        image.sprite = sprite;
    }
    // Update is called once per frame
    void Update()
    {

    }
}
