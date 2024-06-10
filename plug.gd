extends "res://addons/gd-plug/plug.gd"


func _plugging():
	plug("derkork/godot-resource-groups", {"tag": "v0.3.0", "exclude": ["csharp"]})
