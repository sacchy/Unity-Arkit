using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerEye : MonoBehaviour
{
	private UnityChanState m_UnityChanState;
	private float m_NotEyesMeetElapsedTime;
	const float CAN_SMILE_THRESHOLD = 3.0f;

	void Start()
	{
		m_UnityChanState = GameObject.Find("ToonShader_SD_unitychan_humanoid").GetComponent<UnityChanState>();
	}

	void Update () 
	{
		Ray ray;
		float radius = 0.057f;
		int maxDistance = 10;
		ray = new Ray(transform.position, transform.forward); 
		RaycastHit hitInfo;

		// アニメーションで視線がはずれるのでこちらCanSmile判定をしない
		if (Physics.SphereCast(ray, radius, out hitInfo, maxDistance))
		{
			m_NotEyesMeetElapsedTime = 0.0f;
			m_UnityChanState.Smile();
			Debug.DrawLine(ray.origin, hitInfo.point, Color.green);
		}
		else
		{
			// 時間経過
			if (m_NotEyesMeetElapsedTime <= CAN_SMILE_THRESHOLD) 
			{
				m_NotEyesMeetElapsedTime += Time.deltaTime;
			}

			if (CAN_SMILE_THRESHOLD < m_NotEyesMeetElapsedTime) 
			{
				m_UnityChanState.CanSmile = true;
			}

			Debug.DrawLine(ray.origin, ray.origin + new Vector3(0, 0, 10.0f), Color.red);
		}
	}
}
