extends Node2D

var bg_color = Color.black#(0.0,0.1,0.1,1)
var rectx = Rect2(Vector2(0,-256), Vector2(32, 256))
onready var rects = [rectx,Rect2(Vector2(0,-256), Vector2(56, 256)),Rect2(Vector2(0,-300), Vector2(40, 300)),Rect2(Vector2(0,-100), Vector2(200, 100)),Rect2(Vector2(0,-40), Vector2(120, 40))]
var draw_matrix = [Rect2(Vector2(0,-10), Vector2(64, 10))]
var rand_generate = RandomNumberGenerator.new()
onready var screensize = get_viewport().get_visible_rect().size
onready var max_height = screensize.y/6
func _ready():
	rand_generate.randomize()
	var x = rand_generate.randi_range(8,56)
	rand_generate.randomize()
	var y = rand_generate.randi_range(32,max_height)
	rectx = Rect2(Vector2(0,-1*y),Vector2(x,y))
	draw_matrix.push_front(rectx)

func _draw():
	for i in draw_matrix:
		draw_rect(i, bg_color)

func _process(delta):
	position += Vector2.LEFT*delta*50

func _on_Timer_timeout():
	queue_free()
