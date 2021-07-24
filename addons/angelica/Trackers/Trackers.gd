extends Node2D
var trackerposition = Vector2(0,21)
var count = 1
onready var tracker = preload("res://addons/angelica/Trackers/Tracker.tscn")
onready var timer = preload("res://addons/angelica/Trackers/Timer.tscn")
onready var fps = preload("res://addons/angelica/Trackers/Fps.tscn")

onready var angelica = get_node("../")
onready var  printparent = "./../../../"
var object = printparent
var property = "position"
var myparentvar = ""
var mini = true
var icon = "1f3af"

onready var screenSize = get_viewport().get_visible_rect().size
var following = false
var dragging_start_position = Vector2()
var lastmouseposition = Vector2()

func _on_Panel_gui_input(event):
	if Input.is_action_pressed("Click"):
			following = true
			dragging_start_position = get_local_mouse_position()
	else:
		unfollow()
		
func unfollow():
		following = false
	
func _process(_delta):
	if OS.is_window_focused() == false: # or mouse is out of window
		unfollow()
	var mouselimit = get_global_mouse_position() 
	if mouselimit.x < 2 or mouselimit.x > (screenSize.x-16) or mouselimit.y < 2 or mouselimit.y > (screenSize.y-16) :
			unfollow()
	if following:
			if lastmouseposition != get_local_mouse_position():
						var slideinterwindow =  get_local_mouse_position()
						move_local_x(slideinterwindow.x)
						move_local_y(slideinterwindow.y)
			lastmouseposition = get_local_mouse_position()

func track(command):
	if command[0] == "timer":
		pass
#		yield(add_child(Timer,"Timer"),)yield(get_tree().create_timer(0.2), "timeout")
#		add_timer(target,property,where,icon)
	if command[0] == "track":
		if command[1] == "fps":
			var instance = fps.instance()
			instance.position = trackerposition*count
			get_node(".").add_child(instance)
			count += 1
		if command.size() ==3:
			var parent = $"./../../../"
			if parent.has_node(command[1]):
				printparent = "./../../../../"+command[1]
				property = command[2]
#				myparentvar = get_node(printparent).get(command[2]) 
				myparentvar = str(command[1])+"."+str(command[2])+": "+str(myparentvar)
				ai_say(myparentvar)
				add_tracker(printparent,property,trackerposition,"[img]res://img/16/1f4e1.png[/img]")
		if command.size() == 2 and command[1] != "fps":
			property = command[1]
			printparent = "./../../"
			myparentvar = get_node(printparent).get(command[1])
			var textmyparentvar = str(command[1])+": "+str(myparentvar)
			ai_say(textmyparentvar)
			add_tracker(printparent,property,trackerposition,"[img]res://img/16/1f4e1.png[/img]")
func ai_say(text):
	pass

func add_tracker(target,property,where,icon):
	var instance = tracker.instance()
	instance.position = trackerposition*count
	instance.target_node = target
	instance.target_property = property
	get_node(".").add_child(instance)
	count += 1
	
func add_timer(target,property,where,icon):
	var instance = timer.instance()
	instance.position = trackerposition*count
	instance.target_node = target
	instance.target_property = property
	get_node(".").add_child(instance)
	count += 1
