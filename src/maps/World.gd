extends YSort

export var TreeScene : PackedScene 
export var Player : PackedScene 
export var Kill : PackedScene
export var Goodie : PackedScene
export var Credits : PackedScene

onready var screensize := get_viewport_rect().size
onready var max_height := screensize.y/3
var initialize = [
	"glow on",
	"hide"
#	"title [center][rainbow]Share Your Love[/rainbow][/center]",
#	"dj clear",
#	"dj play Love-01",
#	"track fps",
	]
func _ready():
	for i in initialize:
		get_node("../../Body").input_entered(i)
	randomize()
#	$"ColorRect".margin_right = screensize.x
#	$"ColorRect".margin_bottom = screensize.y
#	$"ColorRect".margin_top = max_height
#	_on_Timer_timeout()
	for i in 10:
		var instance = TreeScene.instance()
		instance.position = Vector2(screensize.x,rand_range(max_height,screensize.y))
		instance.modulate = Color(0.75,0.75,0.75)
		instance.add_to_group("Trees")
		add_child(instance)
		yield(get_tree().create_timer(1), "timeout")
		
func _on_Timer_timeout():
		var instance = Player.instance()
		var script = load("res://src/scenes/Player/Friend.gd")
		instance.set_script(script)
		instance.position = Vector2(screensize.x+16 ,rand_range(max_height,screensize.y-10))
		add_child(instance)
#		var friend = preload("res://src/scenes/Player/Friend.gd")
#		get_child(instance).set_script(friend)
	
func gameover():
	if get_parent().has_node("Credits") == false:
		var instance = Credits.instance()
		get_parent().add_child(instance)
		$Credits.visible = true
	$"City/Celebration".reset()
	

func _on_GoodiesTimer_timeout():
	var instanceb = Goodie.instance()
	instanceb.position = Vector2(screensize.x+32,rand_range(max_height,600))
	add_child(instanceb)

func _on_BadTimer_timeout():
	var instance = Kill.instance()
	instance.position = Vector2(screensize.x+32,rand_range(max_height,600))
	add_child(instance)
	
func _on_Player1Timer_timeout():
	var instance = Player.instance()
	var script = load("res://src/scenes/Player/Player.gd")
#	var script = load("res://src/scenes/Player/Friend.gd")
	instance.set_script(script)
	instance.name = "Player1"
	instance.position = Vector2(-16,rand_range(max_height,600))
	add_child(instance)
#	$"Player1".set_script(script)
	$"Player1".health = 40
	$"Player1".time = 0.015
#	$Player1/Body.modulate = Color(4.0, 4.0, 4.0)
	$"PlayersTimer".start()

func _on_PlayersTimer_timeout():
	$"Timer".start()
	$"BadTimer".start()
	pass # Replace with function body.

func _on_Love_tree_exiting():
	get_node("../../Body").input_entered("glow off")
