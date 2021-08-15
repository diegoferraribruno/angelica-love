extends StaticBody2D


var scenes = ["summer","fall","winter","spring","summer","city"]
onready var screen_size := get_viewport_rect().size
var speed = 100

func set_scene():
		scenes.pop_front()
		
func modulate_trees():
	var color = get_parent().color
	$"AnimatedSprite".modulate = color
	
func stop():
	speed = 0
	
func _ready():
	$"AnimatedSprite".set_frame(rand_range(0,3))

func _process(delta):
	position.x += delta*-speed
	var limit = 32
	
	if position.x < -limit:
		position.x = screen_size.x + limit
		position.y = rand_range(screen_size.y/3,screen_size.y-42)
		$"AnimatedSprite".play(scenes[0])
		$"AnimatedSprite".stop()
		$"AnimatedSprite".set_frame(rand_range(0,3))
		var color = get_parent().color
		modulate_trees()
#	elif position.x > screen_size.x + limit:
#		position.x = -limit
#		set_scene()
	
#	if position.y < -limit:
#		position.y = screen_size.y + limit
#	elif position.y > screen_size.y + limit:
#		position.y = -limit
