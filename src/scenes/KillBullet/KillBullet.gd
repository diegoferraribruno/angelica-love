extends Area2D
var motion := Vector2.LEFT
var shooter
var speed := 3
var acceleration := 0.1
var max_speed := 160
var damage_amount := 14
onready var screensize := get_viewport_rect().size

func _ready():
	$Bullet.set_frame(rand_range(1,6))
#	look_at(get_global_mouse_position())

func _physics_process(delta):
#	if position.x < 0:
#		position.x = screensize.x
#	if position.x > screensize.x:
#		position.x = 0
#	if position.y < 0:
#		position.y = screensize.y
#	if position.y > screensize.y:
#		position.y = 0
#	motion = Vector2(-0.4,0)
	position += motion * speed 

func _process(delta):
	$Bullet.rotation += 0.006

func _on_Timer_timeout():
	queue_free()
	
func _on_Bullet_body_entered(body: Node):
	if body.has_method("damage"):
		body.damage(damage_amount)
		
		$Bullet.play("some")
		$"AudioStreamPlayer2D2".play()
#		$AudioStreamPlayer2D2.play()
		
		if is_instance_valid(shooter):
			shooter.health += 0.6
#	else:
#		rotation = rotation*-1

func _on_bullet_animation_finished():
	queue_free()
