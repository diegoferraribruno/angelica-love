extends Node2D

onready var screenSize = get_viewport().get_visible_rect().size
var following = false
var dragging_start_position = Vector2()
var lastmouseposition = Vector2()

func _process(_delta):
	if following:
		if OS.is_window_focused() == false: # or mouse is out of window
			unfollow()
		var mouselimit = get_global_mouse_position() 
		if mouselimit.x < -10 or mouselimit.x > (screenSize.x+10) or mouselimit.y < -10 or mouselimit.y > (screenSize.y+10) :
				unfollow()
		if lastmouseposition != get_local_mouse_position():
			var slideinterwindow =  get_local_mouse_position()
			if mouselimit.x > 12 and mouselimit.x < (screenSize.x-16):
					move_local_x(slideinterwindow.x-12)
			if  mouselimit.y > 12 and mouselimit.y < (screenSize.y-36) :
					move_local_y(slideinterwindow.y-12)
			lastmouseposition = get_local_mouse_position()

func unfollow():
	following = false
	
func _on_close2_button_up():
	visible = false

func _on_Control_gui_input(event):
	if Input.is_action_pressed("Click"):
		following = true
		dragging_start_position = get_local_mouse_position()
	else:
		unfollow()


func _on_Control_mouse_entered():
	$Command2/AnimationPlayer.play("ShowLineEdit")
	$Command2/LineEdit2.grab_focus()
	pass # Replace with function body.


func _on_Control_mouse_exited():
	$Command2/AnimationPlayer.play("HideLineEdit")
	pass # Replace with function body.


func _on_Container_gui_input(event):
	if Input.is_action_pressed("Click"):
		following = true
		dragging_start_position = get_local_mouse_position()
	else:
		unfollow()


func _on_Container_mouse_exited():
	pass # Replace with function body.


func _on_LineEdit2_focus_exited():
	$"Command2/LineEdit2".visible = false
	$"Command2/LineEdit".visible = false
	pass # Replace with function body.


func _on_LineEdit2_text_entered(new_text):
	get_node("../Body")._on_LineEdit_text_entered(new_text)
	$Command2/AnimationPlayer.play("HideLineEdit")
	pass # Replace with function body.


func _on_LineEdit_gui_input(event):
	if Input.is_action_pressed("Click"):
		if not get_local_mouse_position() in $Container.rect_size:
			$Command2/LineEdit.grab_focus(false)
	pass # Replace with function body.


func _on_LineEdit2_mouse_exited():
	$Command2/AnimationPlayer.play("HideLineEdit")
#	$Command2/LineEdit.grab_focus(false)
	pass # Replace with function body.


func _on_LineEdit2_text_changed(new_text):
	$"Command2/LineEdit".text = $"Command2/LineEdit2".text
	pass # Replace with function body.

func newcommand():
	$Command2/LineEdit.clear()
	$Command2/LineEdit2.clear()
