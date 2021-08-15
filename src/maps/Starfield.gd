extends Node2D

onready var fireworks = load("res://src/cutscenes/fireworks/Fireworks.tscn")
onready var screensize = get_viewport().get_visible_rect().size
onready var screenhalf = screensize.y/3+5
var i = 0

func _ready():
	pass # Replace with function body.

func _on_Timer_timeout():
	var pos = Vector2(rand_range(0,screensize.x),rand_range(screenhalf,screensize.y+screenhalf))
	var instance = fireworks.instance()
	add_child(instance)
	$"Timer".wait_time = rand_range(0.3,1.5)
	i += 1
	if i > 30:
		$"Timer".stop()

func reset():
	i = 0
	$"Timer".start()
