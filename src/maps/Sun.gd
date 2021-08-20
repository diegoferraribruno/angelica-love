extends Node2D

var bg_color = Color(8,4,0.9,1)
var draw_matrix = [Rect2(Vector2(0,-32), Vector2(128, 32))]
onready var screensize = get_viewport().get_visible_rect().size
onready var pos =  Vector2(screensize.x/2,screensize.y+256)

func _draw():
	draw_circle(pos, 256, bg_color)
	draw_circle(Vector2(pos.x-100,pos.y-32), 38, Color.black)
	draw_circle(Vector2(pos.x+100,pos.y-32), 38, Color.black)

func reset():
	position = Vector2.ZERO

func _process(delta):
	if position.y > -1600:
		position += Vector2(0,-1)*delta*16
#	else:
#		reset()


#func _on_Timer_timeout():
##	visible = false
#	reset()
#	pass
