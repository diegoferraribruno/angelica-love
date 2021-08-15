extends Node2D

export var  building : PackedScene
onready var screensize = get_viewport().get_visible_rect().size
onready var bg_position = Vector2(screensize.x,screensize.y/3)

func _on_Timer_timeout():
	var instance = building.instance()
	instance.position = bg_position
	instance.add_to_group("city")
	add_child(instance)

func _on_Timer2_timeout():
	$"Timer".stop()
