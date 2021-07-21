extends Control

onready var addonmode = $"../Brain".addonmode
var following = false
var dragging_start_position = Vector2()
var lastmouseposition = Vector2()
onready var root = get_node("..")

func _on_Control_gui_input(event):
	if Input.is_action_pressed("Click"):
			following = true
			dragging_start_position = get_local_mouse_position()
	else:
		following = false

func _process(_delta):
	OS.is_window_focused()
	if following:
		if lastmouseposition != get_local_mouse_position():
			
			if addonmode == false:
				var slidewindow = Vector2()
				slidewindow = (OS.window_position + ((get_local_mouse_position()+lastmouseposition)/3-Vector2(32,32)))
				OS.set_window_position(slidewindow)
				get_node("..").user[6][12] = slidewindow
				get_node("..").last_window_pos = slidewindow
				
			if addonmode == true:
				var slideinterwindow =  Vector2(get_node("..").position + ((get_local_mouse_position()+lastmouseposition)/3-Vector2(32,32)))
				get_node("..").position = slideinterwindow
#				get_node("..").lastposition = get_node("..").position
				get_node("..").user[6][11] = get_node("..").position
#				panel_position()
		lastmouseposition = get_local_mouse_position()
#func panel_position():
#				if get_node("..").position.x > 680:
#					get_node("../Body").position.x = -600
#				if get_node("..").position.x < 480:
#					get_node("../Body").position.x = 0
#				if get_node("..").position.y < -200:
#					get_node("../Body/Heart").position.y = 320
#					get_node("../Body/Head").position.y = 320
#					get_node("../Body/Pinky").position.y = 240
#				if get_node("..").position.y > 0:
#					get_node("../Body/Heart").position.y = 0
#					get_node("../Body/Head").position.y = 0
#					get_node("../Body/Pinky").position.y = 0
#func _on_MinimizeButton_pressed():
#	OS.set_window_minimized(true)

func _on_LinkButton_button_up():
	var angelica = load("res://addons/angelica/images/1f64b.png")
	root._on_LineEdit_text_entered("bye")
