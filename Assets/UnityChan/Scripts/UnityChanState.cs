using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnityChanState : MonoBehaviour 
{
	private Animator anim;
	private float ElapsedTime;
	const float SAD_THRESHOLD = 10.0f;
	const float NORMAL_THRESHOLD = 5.0f;

	public bool CanSmile { get; set; }
	private bool SmileState;

	private void Start () 
	{
		anim = GetComponent<Animator> ();
		anim.SetLayerWeight (1, 1);
	}

	private void InitState()
	{
		anim.SetBool ("Sad", false);
		anim.SetBool ("Smile", false);
	}

	public void Smile()
	{
		if (!CanSmile) return;

		ElapsedTime = 0.0f;
		CanSmile = false;
		SmileState = true;

		InitState();
		anim.SetBool ("Smile", true);
		anim.CrossFade ("smile2@sd_hmd", 0.5f);

		// Delay init
		StartCoroutine(SmileResetCoroutine());
	}
	
	private void Update () 
	{
		// Sad face
		if (CanSmile && SAD_THRESHOLD < ElapsedTime) 
		{
			InitState();
			anim.SetBool ("Sad", true);
			anim.CrossFade ("sad@sd_hmd", 0.5f);
		}
		// Normal face
		else if (SmileState && NORMAL_THRESHOLD < ElapsedTime)
		{
			InitState();
			SmileState = false;
			anim.CrossFade ("default@sd_hmd", 0.5f);
		}

		// 時間経過
		if (ElapsedTime <= SAD_THRESHOLD) 
		{
			ElapsedTime += Time.deltaTime;
		}
	}

	private IEnumerator SmileResetCoroutine()
	{
		yield return new WaitForSeconds(1.0f);
		InitState();
	}
}
