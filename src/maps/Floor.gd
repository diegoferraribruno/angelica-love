extends Node2D

onready var screensize = get_viewport().get_visible_rect().size

func _ready():
	pass # Replace with function body.

func _draw():
	draw_rect(Rect2(Vector2(0,screensize.y/2),Vector2(screensize)),Color.black)
