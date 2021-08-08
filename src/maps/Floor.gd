extends Node2D

onready var screensize = get_viewport().get_visible_rect().size

func _draw():
	draw_rect(Rect2(Vector2(0,screensize.y/2),Vector2(screensize)),Color(0.1,0.1,0.1))
