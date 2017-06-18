using UnityEngine;
using System.Collections;

public class CursorHit : MonoBehaviour {
	
	public HeadLookController headLook;
	private float offset = 1.5f;
	
	// Update is called once per frame
	void LateUpdate () {
		if (Input.GetKey(KeyCode.UpArrow))
			offset += Time.deltaTime;
		if (Input.GetKey(KeyCode.DownArrow))
			offset -= Time.deltaTime;
		
		Ray cursorRay = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hit;
		if (Physics.Raycast(cursorRay, out hit)) {
			transform.position = hit.point + offset * Vector3.up;
		}
		
		headLook.target = transform.position;
	}
}
