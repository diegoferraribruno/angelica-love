extends Node2D

var bg_color = [Color(3,2,1,1), Color(2,3,4,1), Color(3,4,5,1), Color(2,4,3,1), Color(4,3,5,1) ]
var draw_matrix = [Rect2(Vector2(0,-32), Vector2(128, 32))]
onready var screensize = get_viewport().get_visible_rect().size
onready var screenhalf = screensize.y/3
#onready var pos =  Vector2(screensize.x,screensize.y+256)


func _draw():
	for i in 30:
		var startglow = bg_color[int(rand_range(0,5))]
		var pos = Vector2(rand_range(0,screensize.x),rand_range(screenhalf,screensize.y+screenhalf))
		draw_circle(pos, rand_range(0.5,3),bg_color[0])
	for i in 300:
		var startglow = bg_color[int(rand_range(0,5))]
		var pos = Vector2(rand_range(0,screensize.x),rand_range(screenhalf,screensize.y*2.2))
		draw_circle(pos, rand_range(0.5,1),startglow)


func reset():
	position = Vector2.ZERO

func _process(delta):
	if position.y > -2000:
		position += Vector2(0,-1)*delta*10
