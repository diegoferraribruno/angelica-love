extends Node2D
onready var scene = load("res://src/maps/Xperma.tscn")
onready var screensize := get_viewport_rect().size
onready var screencenter := screensize/2-Vector2(640,360)
func _ready():
	position = screencenter
	var anim = get_node("AnimationPlayer").get_animation("Espiral")
	anim.set_loop(true)
	get_node("AnimationPlayer").play("Espiral")

func _on_Timer_timeout():
	
	queue_free()
