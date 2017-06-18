using UnityEngine;
using System.Collections;

public class HelpText : MonoBehaviour {
	void OnGUI () {
		GUILayout.Label("Move mouse to move look-at point");
		GUILayout.Label("Use up and down arrows to change height");
		GUILayout.Label("Left-drag to orbit camera");
		GUILayout.Label("Right-drag to zoom camera");
	}
}
