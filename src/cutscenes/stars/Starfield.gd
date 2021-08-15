extends Node2D

onready var roundstar = load("res://src/cutscenes/stars/Star.tscn")
onready var bitstar = load("res://src/cutscenes/stars/StarBit.tscn")
onready var screensize = get_viewport().get_visible_rect().size
onready var screenhalf = screensize.y/3+5
var i = 0

func _ready():
	randomize()

func _on_Timer_timeout():
	var pos = Vector2(rand_range(0,screensize.x),screenhalf)
	var instance = roundstar.instance()
	instance.position = pos
	add_child(instance)
	$"Timer".wait_time = rand_range(1.5,4)
	i += 1
	if i > 60:
		$"Timer".stop()
	add_little_stars()

func add_little_stars():
	var posb = Vector2(rand_range(0,screensize.x),screenhalf)
	var instance = bitstar.instance()
	instance.position = posb
	add_child(instance)
	
func reset():
	i = 0
	$"Timer".start()
