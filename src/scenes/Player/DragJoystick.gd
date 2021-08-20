extends Node2D
var following = false
var touchpos = Vector2.ZERO

signal Joystick

func _draw():
	draw_circle(Vector2(0,0),24,Color(0.9,0.7,0.2,0.2))

func _process(delta):
	if following == true:
		position = get_parent().get_local_mouse_position()
	else:
		position = Vector2.ZERO

func _on_Area2D2_input_event(viewport, event, shape_idx):
	if event is InputEventScreenTouch and event.pressed:
		following = true
	if event is InputEventScreenTouch and not event.pressed:
		following = false

func _on_RichTextLabel_gui_input(event):
	if event is InputEventScreenTouch and event.pressed:
		following = true
	if event is InputEventScreenTouch and not event.pressed:
		following = false

func _on_TouchScreenButton_pressed():
	following = true
	pass # Replace with function body.

func _on_TouchScreenButton_released():
	following = false
	pass # Replace with function body.
