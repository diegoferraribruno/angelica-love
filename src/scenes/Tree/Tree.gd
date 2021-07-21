extends KinematicBody2D

onready var screen_size := get_viewport_rect().size

var motion = Vector2.ZERO
var max_speed := 160
var acceleration := 0.3


func _ready():
	Game.connect("chaos_changed", self, "on_chaos_changed")
	
	$AnimatedSprite.frame = rand_range(0,4)

func _physics_process(delta):
	var limit = 32
	
	if position.x < -limit:
		position.x = screen_size.x + limit
	elif position.x > screen_size.x + limit:
		position.x = -limit
	
	if position.y < -limit:
		position.y = screen_size.y + limit
	elif position.y > screen_size.y + limit:
		position.y = -limit
	
	var shake = {
		"start": 55, #5 min e 10 segundos começa a nevasca
		"acceleration": 5,
		"end": 90
	}
	
	var speed = 150 
	if Game.chaos > shake.start:
		motion = (
			Vector2.LEFT.rotated(randf() * deg2rad(360))
			* min(Game.chaos-shake.start, shake.end) * shake.acceleration
		) + (Vector2.LEFT * speed) 
		motion = (motion * delta) 
		move_and_collide(motion)
		
	else:
#		motion = move_and_slide(Vector2.LEFT * speed)
		motion = lerp(
			motion,
			Vector2(-0.4, 0) * max_speed, acceleration
		)
		motion = move_and_slide(motion)

func on_chaos_changed():
	pass
