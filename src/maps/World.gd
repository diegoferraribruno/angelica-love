extends YSort

export var TreeScene : PackedScene 
export var Player : PackedScene 
export var Kill : PackedScene
export var Goodie : PackedScene
export var Credits : PackedScene
var color 

var friends = {}
var x = 0

onready var screensize := get_viewport_rect().size
onready var max_height := screensize.y/3
var initialize = [
	"glow on",
	"hide on",
#	"title [center][rainbow]Share Your Love[/rainbow][/center]",
#	"dj clear",
#	"dj play Love-01",
#	"track fps",
	]
func modulate_trees(cor):
	color = cor
	get_tree().call_group("Trees","modulate_trees")
	
	
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
#		instance.modulate = Color(0.75,0.75,0.75)
		instance.add_to_group("Trees")
		add_child(instance)
		yield(get_tree().create_timer(1), "timeout")


func _on_Goodies_timeout():
	var instanceb = Goodie.instance()
	instanceb.position = Vector2(screensize.x+32,rand_range(max_height,600))
	add_child(instanceb)

func _on_Bad_timeout():
	var instance = Kill.instance()
	instance.position = Vector2(screensize.x+32,rand_range(max_height,600))
	add_child(instance)
	
func _on_Player_timeout():
#	var dragplayer = load("res://src/scenes/Player/DragPlayer.tscn")
#	var instance = dragplayer.instance()
#	var script = load("res://src/scenes/Player/DragPlayer.gd")
	var instance = Player.instance()
	var script = load("res://src/scenes/Player/Player.gd")
	instance.set_script(script)
	instance.name = "Player1"
	instance.position = Vector2(screensize.x/2,screensize.y/2)
	add_child(instance)
	$"Player1".health = 40
	$"Player1".time = 0.015
	$"Delay".start()
	$"AudioStreamPlayer".play()

func _on_Delay_timeout():
	$"Friends".start()
	$"Bad".start()

func _on_Love_tree_exiting():
	get_node("../../Body").input_entered("glow off")

func _on_Friends_timeout():
		var instance = Player.instance()
		var script = load("res://src/scenes/Player/Friend.gd")
		instance.add_to_group("Friends")
		instance.set_script(script)
		var nome = "Friend"+str(x)
		instance.name = nome
		instance.position = Vector2(screensize.x+16 ,rand_range(max_height,screensize.y-10))
		add_child(instance)
		x +=1

func gameover():
	if get_parent().has_node("Credits") == false:
		var instance = Credits.instance()
		get_parent().add_child(instance)
#		$Credits.visible = true
	$"City/Celebration".reset()
	$"GameOver".start()

func _on_GameOver_timeout():
	get_node("../../User").user["friends"] = friends 
	queue_free()
