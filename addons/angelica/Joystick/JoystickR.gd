extends Node2D
var following = false
var touchpos = Vector2.ZERO
var max_dist = 100
#func _draw():
#	draw_circle(Vector2(0,0),20,Color(1,0,0,0.3))

func _process(delta):
	if following == true:
		var pos = touchpos
		position = pos
#		position = get_parent().get_local_mouse_position()
#	elif position.x > max_dist or position.x < -max_dist or position.y > max_dist or position.y < -max_dist: 
#		position = Vector2.ZERO

func _on_Area2D2_input_event(viewport, event, shape_idx):
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

func _on_RichTextLabel_gui_input(event):
	if event is InputEventScreenTouch and event.pressed:
		following = true
	if event is InputEventScreenTouch and not event.pressed:
		following = false

func _input(event): 
	var following = false 
	if event is InputEventScreenTouch: 
		if event.is_pressed(): 
			following = true
		else: 
			following = false 
		if event is InputEventScreenDrag: 
			following = true 
		if event is InputEventScreenDrag: 
			if following: 
				touchpos = event.position 
			else:
				position = Vector2(0,0)
	if Input.is_action_pressed("Click"):
		following = true
		touchpos = get_local_mouse_position()

func _on_TouchScreenButton_gui_input(event):
	pass # Replace with function body.
