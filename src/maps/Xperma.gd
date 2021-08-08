extends YSort

export var TreeScene : PackedScene 
export var XPlayer : PackedScene 
export var Kill : PackedScene
export var Goodie : PackedScene
export var Love : PackedScene
onready var screensize := get_viewport_rect().size

func _ready():
	randomize()
	$"../ColorRect".margin_right = screensize.x
	$"../ColorRect".margin_bottom = screensize.y
#	for i in 10:
#		var instance = TreeScene.instance()
#		instance.position = Vector2(screensize.x,rand_range(10,screensize.y))
#		instance.modulate = Color(0.75,0.75,0.75)
#		add_child(instance)
#		yield(get_tree().create_timer(1.5), "timeout")
		
func _on_Timer_timeout():
		var instance = XPlayer.instance()
		instance.position = Vector2(rand_range(16,screensize.x-16),screensize.y+12)
		add_child(instance)
#		var friend = preload("res://src/scenes/Player/Friend.gd")
#		get_child(instance).set_script(friend)
	
func gameover():
#	$Credits.visible = true
	var instance = Love.instance()
	get_node("../../").add_child(instance)
	get_parent().queue_free()
	

func _on_GoodiesTimer_timeout():
	var instanceb = Goodie.instance()
	instanceb.position = Vector2(rand_range(0,screensize.x),screensize.y)
	instanceb.motion = Vector2.UP
	add_child(instanceb)

func _on_BadTimer_timeout():
	var instance = Kill.instance()
	instance.position = Vector2(rand_range(0,screensize.x),0)
	instance.motion = Vector2.DOWN
	add_child(instance)
	
func _on_Player1Timer_timeout():
	var instance = XPlayer.instance()
	var script = load("res://src/scenes/Player/XPlayer.gd")
#	instance.set_script("res://src/scenes/Player/Player.gd")
	instance.name = "XPlayer"
	instance.position = Vector2(-16,rand_range(10,600))
	add_child(instance)
	$"XPlayer".set_script(script)
	$"XPlayer".health = 40
	$"XPlayer".time = 0.015
	$XPlayer/Body.modulate = Color(3.0, 3.0, 3.0)
	$"PlayersTimer".start()

func _on_PlayersTimer_timeout():
	$"Timer".start()
	pass # Replace with function body.
