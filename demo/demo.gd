extends Control


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventJoypadMotion:
		event = event as InputEventJoypadMotion
		if absf(event.axis_value) < 0.4:
			return
	%InputEventIcon.input_event = event
	%InputEventIcon2.input_event = event
	%InputEventButton.input_event = event
	%InputEventButton2.input_event = event
