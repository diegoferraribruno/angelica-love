extends Node2D

onready var direction = Vector2(rand_range(-1,1),rand_range(-1,1))

func _ready():
	randomize()
	direction = Vector2(rand_range(-1,1),rand_range(-1,1))

func _process(delta):
	modulate.a -= 1 * delta
#	look_at(Vector2(rand_range(0,1),rand_range(0,1)))
	position += direction*delta*150

func _draw():
	draw_circle(Vector2.ZERO,1,Color(1,1,1,1))


func _on_Timer_timeout():
	queue_free()
