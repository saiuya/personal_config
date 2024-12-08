using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScapeMenuDisable : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        gameObject.SetActive(false);

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void ActiveControl()
    {
        if (gameObject.activeSelf)
        {
            gameObject.SetActive(false);

        }
        else
        {
            gameObject.SetActive(true);
        }
    }
}
