extends YSort
#onready var state = get_node("../").state
#onready var head = get_node("Chat")
#onready var interface = get_node("Chat/Interface")
#onready var chatmini = get_node("ChatMini")
#onready var heart = get_node("Editor/TextEdit")
#onready var editor = get_node("Editor")
#onready var listen = get_node("LineEdit")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	listen.grab_focus()
	
#	if autohide == true:
#		body.change_state("hide")

	pass # Replace with function body.
#
#func change_state(state_new):
#	if state != "mini": 
#		state_old = state
#	match state_new:
#		"mini":
#			face_change("res://addons/angelica/images/32/1f646.png")
#			$Body.visible = false
#			state = "mini"
#			if $Control.addonmode == false:
#				OS.set_window_mouse_passthrough($AuraMini.polygon)
#		"hide":
#			face_change("res://addons/angelica/images/32/0000.png")
#			$Body.visible = true
#			if $Control.addonmode == false:
#				if heart.visible == true:
#					OS.set_window_mouse_passthrough($AuraFull.polygon)
#				else:
#					OS.set_window_mouse_passthrough($AuraMedium.polygon)
#			head.visible = false
#			chatmini.visible = true
#			state = "hide"
#			if heart.visible == true:
#				heart.grab_focus()
#			else:
#				listen.grab_focus()
#		"show":
#			$Body.visible = true
#			face_change("res://addons/angelica/images/avatar/1f646.png")
#			if $Control.addonmode == false:
#				OS.set_window_mouse_passthrough($AuraFull.polygon)
#			head.visible = true
#			chatmini.visible = false
#			if heart.visible == true:
#				heart.grab_focus()
#			else:
#				$"LineEdit".grab_focus()
#			state = "show"
#	if $Control.addonmode == true:
#			OS.set_window_mouse_passthrough([])
## Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
##	pass
