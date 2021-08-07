extends Node2D

var bg_color = Color(4,2.5,1.1,1)
#var rectx = Rect2(Vector2(0,-256), Vector2(32, 256))
#onready var rects = [rectx,Rect2(Vector2(0,-256), Vector2(56, 256)),Rect2(Vector2(0,-300), Vector2(40, 300)),Rect2(Vector2(0,-100), Vector2(200, 100)),Rect2(Vector2(0,-40), Vector2(120, 40))]
var draw_matrix = [Rect2(Vector2(0,-32), Vector2(128, 32))]
onready var screensize = get_viewport().get_visible_rect().size
onready var pos =  Vector2(screensize.x/2,screensize.y+256)
#
#func _ready():
#	randomize()
#	var x = rand_range(16,56)
#	var y = rand_range(32,200)
#	rectx = Rect2(Vector2(0,-1*y),Vector2(x,y))
#	draw_matrix.push_front(sun)

func _draw():
#	for i in draw_matrix:
		draw_circle(pos, 256, bg_color)

func _process(delta):
	position += Vector2.UP*delta*15

func _on_Timer_timeout():
	queue_free()
