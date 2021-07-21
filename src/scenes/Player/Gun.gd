extends Node2D

onready var sprite = $AnimatedSprite

func _process(delta):
	var mouse = get_global_mouse_position()
	look_at(mouse)
	if mouse.x < global_position.x:
		sprite.set_flip_v(true)
	else:
		sprite.set_flip_v(false)
