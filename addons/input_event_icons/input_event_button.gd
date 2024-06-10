@tool
class_name InputEventButton
extends Button

@export var input_event: InputEvent:
	set = set_input_event


func set_input_event(event: InputEvent) -> void:
	input_event = event
	_update_icon()
	queue_redraw()


func _update_icon() -> void:
	var event_icon_mapping := EventIconMapping.new()
	var event_icon: EventIconMapping.EventIcon = event_icon_mapping.get_icon_for_event(input_event)
	if not event_icon is EventIconMapping.UnsupportedEventIcon:
		icon = event_icon.texture
		if event_icon is EventIconMapping.KeyboardEventIcon:
			event_icon = event_icon as EventIconMapping.KeyboardEventIcon
			modulate = Color("#E73246") if event_icon.is_numpad else Color.WHITE
