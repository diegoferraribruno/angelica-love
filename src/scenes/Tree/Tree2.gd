extends StaticBody2D


var scenes = ["summer","fall","winter","spring","summer"]
onready var screen_size := get_viewport_rect().size


func set_scene():
		scenes.pop_front()

func _ready():
	$"AnimatedSprite".set_frame(rand_range(0,3))

func _process(delta):
	position.x += delta*-100
	var limit = 32
	
	if position.x < -limit:
		position.x = screen_size.x + limit
		$"AnimatedSprite".play(scenes[0])
		$"AnimatedSprite".stop()
		$"AnimatedSprite".set_frame(rand_range(0,3))
		
#	elif position.x > screen_size.x + limit:
#		position.x = -limit
#		set_scene()
	
#	if position.y < -limit:
#		position.y = screen_size.y + limit
#	elif position.y > screen_size.y + limit:
#		position.y = -limit
