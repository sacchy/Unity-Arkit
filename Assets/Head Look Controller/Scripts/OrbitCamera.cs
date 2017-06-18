using UnityEngine;
using System.Collections;

public class OrbitCamera : MonoBehaviour {
	
	public Transform target;
	public Transform cam;
	public Vector3 offset = Vector3.zero;
	private float cameraRotSide;
	private float cameraRotUp;
	private float cameraRotSideCur;
	private float cameraRotUpCur;
	private float distance;
	
	void Start () {
		cameraRotSide = transform.eulerAngles.y;
		cameraRotSideCur = transform.eulerAngles.y;
		cameraRotUp = transform.eulerAngles.x;
		cameraRotUpCur = transform.eulerAngles.x;
		distance = -cam.localPosition.z;
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetMouseButton(0)) {
			cameraRotSide += Input.GetAxis("Mouse X")*5;
			cameraRotUp -= Input.GetAxis("Mouse Y")*5;
		}
		cameraRotSideCur = Mathf.LerpAngle(cameraRotSideCur, cameraRotSide, Time.deltaTime*5);
		cameraRotUpCur = Mathf.Lerp(cameraRotUpCur, cameraRotUp, Time.deltaTime*5);
		
		if (Input.GetMouseButton(1)) {
			distance *= (1-0.1f*Input.GetAxis("Mouse Y"));
		}
		distance *= (1-1*Input.GetAxis("Mouse ScrollWheel"));
		
		Vector3 targetPoint = target.position;
		transform.position = Vector3.Lerp(transform.position, targetPoint + offset, Time.deltaTime);
		transform.rotation = Quaternion.Euler(cameraRotUpCur, cameraRotSideCur, 0);
		
		float dist = Mathf.Lerp(-cam.transform.localPosition.z, distance, Time.deltaTime*5);
		cam.localPosition = -Vector3.forward * dist;
	}
}
