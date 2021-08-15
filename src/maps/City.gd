extends Node2D

onready var star = load("res://src/maps/Stars.tscn")

export var  building : PackedScene
onready var screensize = get_viewport().get_visible_rect().size
onready var bg_position = Vector2(screensize.x,screensize.y/3)

#func _ready():
#	for i in 100:
#		var instance = star.instance()
#		add_child(instance)

func _on_Timer_timeout():
	var instance = building.instance()
	instance.position = bg_position
	add_child(instance)

func _on_Timer2_timeout():
	$"Timer".stop()
