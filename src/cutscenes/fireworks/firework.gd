extends Node2D

var bg_color = [Color(8,2,0.8,1.5), Color(1.3,2,8,1.5), Color(8,2,4,1.5), Color(4,0.8,8,1.5), Color(2,8,3,1.5) ]
var draw_matrix = [Rect2(Vector2(0,-32), Vector2(128, 32))]
onready var screensize = get_viewport().get_visible_rect().size
onready var pos =  Vector2(screensize.x,screensize.y/3)
onready var sparkle = load("res://src/cutscenes/fireworks/sparkle.tscn")
var color = Color()

func _ready():
	position = Vector2(rand_range(100,pos.x-100),pos.y)
	color = bg_color[int(rand_range(0,5))]
	
func reset():
	position.y = screensize.y/3

func _process(delta):
	if position.y > 70:
		position += Vector2.UP*delta*120
	else:
		$"../AudioStreamPlayer2D".position.x = self.position.x
		$"../AudioStreamPlayer2D".play()
		for i in 200:
			var instance = sparkle.instance()
			instance.position = self.global_position
			instance.modulate = color
			get_parent().add_child(instance)
		queue_free()
		

func _on_Timer_timeout():
	pass # Replace with function body.
