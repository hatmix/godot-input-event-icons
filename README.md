# Godot Input Event Icons

This addon was created after trying to use other addons to put pictures for control mapping in my [jam template](https://github.com/hatmix/godot-4-jam-template).  It seems to work pretty well, but it was slapped together in about a day and has a dependency on another addon.

Adds the `InputEventIcon` node based on `TextureRect`. Set its `input_event` property to an `InputEvent` commonly found in `InputMap.action_get_events` and you should get a picture from [Kenney's input-prompts](https://kenney.nl/assets/input-prompts). 

Numpad keys are recolored red to distinguish from non-numpad keys.

Supported event types:
* `InputEventKey`
* `InputEventMouseButton`
* `InputEventJoypadButton`
* `InputEventJoypadMotion`

At the moment, Xbox icons are used for all joypad types.
