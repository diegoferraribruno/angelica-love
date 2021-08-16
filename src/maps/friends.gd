extends YSort

onready var user = get_node("../../User").user
onready var player = load("res://src/scenes/Player/Player.tscn")
onready var fscript = load("res://src/scenes/Player/Friend.gd")
#onready var screensize = get_viewport().get_visible_rect().size
onready var screensize := get_viewport_rect().size
onready var max_height := screensize.y/3

var initialize = ["title Friends"]

func _ready():
	for i in initialize:
		get_node("../../Body").input_entered(i)
	if user.has("friends"):
		var x = 0
		for i in user["friends"]:
			var instance = player.instance()
			instance.set_script(fscript)
			instance.position = Vector2(screensize.x+x*60,rand_range(64,screensize.y))
			var nome = "Friend"+str(x)
			instance.name = nome
			self.add_child(instance)
			x += 1
#
#func _on_Player_timeout():
	var instance = player.instance()
	var script = load("res://src/scenes/Player/Player.gd")
	instance.set_script(script)
	instance.name = "Player1"
	instance.position = Vector2(-16,rand_range(max_height,600))
	add_child(instance)
	$"Player1".health = 40
	$"Player1".time = 0.015
#	$"Delay".start()
	$"AudioStreamPlayer".play()

func _on_Friends_tree_exiting():
	get_node("../../Body").synapse("title")
