extends Node2D

#onready var screenSize = get_viewport().get_visible_rect().size
#
#var following = false
#var dragging_start_position = Vector2()
#var lastmouseposition = Vector2()
#
#func _process(_delta):
#	if OS.is_window_focused() == false: # or mouse is out of window
#		unfollow()
#	var mouselimit = get_global_mouse_position() 
#	if mouselimit.x < -10 or mouselimit.x > (screenSize.x+10) or mouselimit.y < -10 or mouselimit.y > (screenSize.y+10) :
#			unfollow()
#	if following:
##		if lastmouseposition != get_local_mouse_position():
#			var slideinterwindow =  get_local_mouse_position()
#			if mouselimit.x > 12 and mouselimit.x < (screenSize.x-16):
#				move_local_x(slideinterwindow.x-12)
#			if  mouselimit.y > 12 and mouselimit.y < (screenSize.y-36) :
#				move_local_y(slideinterwindow.y-12)
##		lastmouseposition = get_local_mouse_position()
#
##func unfollow():
##	following = false
#
#func _on_Panel_gui_input(event):
#	if Input.is_action_pressed("Click"):
#		following = true
#
##		dragging_start_position = get_local_mouse_position()
#	else:
#		unfollow()
