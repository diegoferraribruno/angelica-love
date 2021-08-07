extends Node2D

var bg_color = Color(4,2.5,1.1,1)
var draw_matrix = [Rect2(Vector2(0,-32), Vector2(128, 32))]
onready var screensize = get_viewport().get_visible_rect().size
onready var pos =  Vector2(screensize.x/2,screensize.y+256)

func _draw():
	draw_circle(pos, 256, bg_color)

func reset():
	position = pos
	update()

func _process(delta):
	if position.y > -1600:
		position += Vector2.UP*delta*15


#func _on_Timer_timeout():
##	visible = false
#	reset()
#	pass
