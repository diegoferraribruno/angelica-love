extends Node2D

onready var screenSize = get_viewport().get_visible_rect().size
onready var app_name = get_parent().name

#"1f49f","2b55",1f5e8
var supperbutton = "[url=Menu][img]res://img/32/1f49f.png[/img][/url]"
var following = false
var dragging_start_position = Vector2()
var lastmouseposition = Vector2()
var parent_start_position = Vector2()

func _ready():
	screenSize = get_viewport().get_visible_rect().size
	get_tree().root.connect("size_changed", self, "_on_viewport_size_changed")
	load_start_position()
	_on_viewport_size_changed()
	update_icon()

func load_start_position():
	if $"../../../".has_node("User"):
		print (app_name)
		if app_name in get_node("../../../User").user:
			var pos = str2var(get_node("../../../User").user[app_name]["position"])
			get_parent().position = pos
			print(pos)
		
			
func update_icon():
	if get_parent().get("icon") != null:
		supperbutton = "[url=superbutton][img]res://img/32/"+get_parent().icon+".png[/img][/url]"
		_on_bbcode_mouse_entered()
	if get_node("../").get("mini") != null:
		supperbutton = supperbutton + "[url=minithis] [img]res://img/16/268a.png[/img][/url]"
	if get_node("../").get("close") != null:
		supperbutton = supperbutton + "[url=closebutton] [img]res://img/16/1f6c7.png[/img][/url]"

func _on_viewport_size_changed():
	screenSize = get_viewport().get_visible_rect().size
	if get_parent().position.x > screenSize.x-20:
		get_parent().position.x = screenSize.x-66
	if get_parent().position.y > screenSize.y-20:
		get_parent().position.y = screenSize.y-66
	if get_parent().position.x < 0:
		get_parent().position.x = 30
	if get_parent().position.y < 0:
		get_parent().position.y = 30

func _process(_delta):
	if following:
		var mouse_actual_pos = get_global_mouse_position()
		var dif_window_pos = dragging_start_position-mouse_actual_pos
		var slideinterwindow =  parent_start_position - dif_window_pos 
		if mouse_actual_pos.x > 12 and mouse_actual_pos.x < (screenSize.x-66):
			get_parent().position.x = slideinterwindow.x
		if  mouse_actual_pos.y > 12 and mouse_actual_pos.y < (screenSize.y-66) :
			get_parent().position.y = slideinterwindow.y

func unfollow():
	following = false
	get_node("../../").add_app(get_parent().name,get_parent().position)

func handle(meta):
	match meta:
		"closebutton":
			if get_node("../").get("close") != null:
				if get_node("../").get("quit") != null:
					get_node("../").quit()
				get_parent().queue_free()
		"minithis":
			if get_node("../").get("mini") != null:
					get_parent().visible = false
					
func _on_bbcode_meta_clicked(meta):
	handle(meta)
	
func _on_bbcode_meta_hover_ended(meta):
	if get_parent().get("icon") != null:
		$bbcode.bbcode_text = "[url=superbutton][img]res://img/32/"+get_parent().icon+".png[/img][/url]"
	else:
		$bbcode.bbcode_text = "[url=superbutton][img]res://img/32/1f49f.png[/img][/url]"
	
func _on_bbcode_meta_hover_started(meta):
	$bbcode.bbcode_text = supperbutton
#
func _on_bbcode_gui_input(event):
	if Input.is_action_just_pressed("Click"):
		dragging_start_position = get_global_mouse_position()
		parent_start_position = get_parent().position
	if Input.is_action_pressed("Click"):
#		get_parent().z_index = -1 # necessário ver ordenamento das janelas - this code needs an update.
		following = true
	elif Input.is_action_just_released("Click"):
		unfollow()

func _on_bbcode_mouse_entered():
	$bbcode.bbcode_text = supperbutton
