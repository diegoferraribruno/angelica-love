extends Node2D

onready var screensize = get_viewport().get_visible_rect().size
onready var screenhalf = screensize.y/3+5
var bg_color = [Color(3,2,1,1), Color(2,3,4,1), Color(3,4,5,1), Color(2,4,3,1), Color(4,3,5,1) ]
#var draw_matrix = [Rect2(Vector2(0,-32), Vector2(128, 32))]
#onready var pos =  Vector2(screensize.x,screensize.y+256)

func _draw():
		var startglow = bg_color[int(rand_range(0,5))]
		draw_circle(Vector2(0,0), int(rand_range(0.8,3)), startglow)

func reset():
		position.y = screenhalf
		position.x = rand_range(3,screensize.x-3)

func _process(delta):
	position += Vector2(0,-1)*delta*8
	if position.y < -10:
		queue_free()
