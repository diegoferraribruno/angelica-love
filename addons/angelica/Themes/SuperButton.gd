extends Node2D

onready var screenSize = get_viewport().get_visible_rect().size
onready var app_name = get_parent().name
onready var hint = $"Hint"
onready var last_pos = get_parent().position

var supperbutton = "[url=move][img]res://img/32/1f49f.png[/img][/url]"
var drag = false

var touch = false
var touch_start := Vector2()

var dragging_start_position = Vector2()
var lastmouseposition = Vector2()
var parent_start_position = Vector2()

func _ready():
#	screenSize = get_viewport().get_visible_rect().size
	get_tree().root.connect("size_changed", self, "_on_viewport_size_changed")
	load_start_position()
	_on_viewport_size_changed()
	update_icon()

func load_start_position():
	if $"../../../".has_node("User"):
		if app_name in get_node("../../../User").user:
			var pos = str2var(get_node("../../../User").user[app_name]["position"])
			get_parent().position = pos

func update_icon():
	if get_parent().get("icon") != null:
		supperbutton = "[url=move][img]res://img/32/"+get_parent().icon+".png[/img][/url]"
		_on_bbcode_mouse_entered()
	if get_node("../").get("mini") != null:
		supperbutton = supperbutton + "[url=minimize] [img]res://img/32/268a.png[/img][/url]"
	if get_node("../").get("close") != null:
		supperbutton = supperbutton + "[url=close] [img]res://img/32/1f6c7.png[/img][/url]"
	if get_node("../").get("menu") != null:
		supperbutton = supperbutton + get_node("../").menu

func _on_viewport_size_changed():
	screenSize = get_viewport().get_visible_rect().size
	if get_parent().position.x > screenSize.x-20:
		get_parent().position.x = screenSize.x-66
	if get_parent().position.y > screenSize.y-20:
		get_parent().position.y = screenSize.y-66
	if get_parent().position.x < 0:
		get_parent().position.x = 16
	if get_parent().position.y < 0:
		get_parent().position.y = 16

func _process(_delta):
	if drag == true or touch == true:
		get_parent().position = get_global_mouse_position()-position-Vector2(24,28)

func handle(meta):
	match meta:
		"move":
			pass
		"close":
			if get_node("../").get("close") != null:
				if get_node("../").get("quit") != null:
					get_node("../").quit()
				get_parent().queue_free()
		"minimize":
			if get_node("../").get("mini") != null:
					get_parent().visible = false
		_:
			if get_parent().get("menu") != null:
				get_parent().menu(meta)

func _on_bbcode_meta_clicked(meta):
	handle(meta)

func _on_bbcode_meta_hover_ended(meta):
	if get_parent().get("icon") != null:
		$bbcode.bbcode_text = "[url=move][img]res://img/32/"+get_parent().icon+".png[/img][/url]"
	else:
		$bbcode.bbcode_text = "[url=move][img]res://img/32/1f49f.png[/img][/url]"
	hint.hint("",Vector2(-20,-20))

func _on_bbcode_meta_hover_started(meta):
	$bbcode.bbcode_text = supperbutton
	var pos = get_local_mouse_position()+Vector2(-30,-40)
	hint.hint(meta,pos)

func hint(meta,pos):
	var posi = get_local_mouse_position()+Vector2(-30,-40)
	hint.hint(meta,posi)

func _on_bbcode_mouse_entered():
	$bbcode.bbcode_text = supperbutton

func _on_Timer_timeout():
	if dragging_start_position == get_global_mouse_position():
#	if last_pos == get_parent().position:
		$"Timer".stop()
		drag = false
		touch = false
		global_position.x
		if global_position.x > screenSize.x-66:
			get_parent().position.x = screenSize.x-66-position.x
		if global_position.y > screenSize.y-76:
			get_parent().position.y = screenSize.y-80-position.y
		if global_position.x < 0:
			get_parent().position.x = 4
		if global_position.y < 0:
			get_parent().position.y = 4
	dragging_start_position = get_global_mouse_position()
	last_pos = get_parent().position
	#save window position
	get_node("../../").add_app(get_parent().name,get_parent().position) 

func _on_bbcode_gui_input(event):
	if Input.is_action_just_pressed("Click"):
		dragging_start_position = get_global_mouse_position()
		$"Timer".start()
#		get_node("../../").move_child(get_parent(), -1)
		touch = true
	if event is InputEventScreenTouch:
		if event.is_pressed():
			$"Timer".start()
			dragging_start_position = get_global_mouse_position()
			touch = true
	if event.is_action_released("Click"):
		touch = false
		drag = false
