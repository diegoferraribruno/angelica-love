extends StaticBody2D

onready var screen_size := get_viewport_rect().size

func _process(delta):
	position.x += delta*-100
	var limit = 32
	
	if position.x < -limit:
		position.x = screen_size.x + limit
	elif position.x > screen_size.x + limit:
		position.x = -limit
	
	if position.y < -limit:
		position.y = screen_size.y + limit
	elif position.y > screen_size.y + limit:
		position.y = -limit
