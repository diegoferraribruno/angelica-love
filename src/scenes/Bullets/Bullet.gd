extends Area2D
var type := 0
var shooter
var speed := 6
var damage_amount := -4
onready var screensize := get_viewport_rect().size

func _ready():
	look_at(get_global_mouse_position())
#	type = rand_range(0,27)
	$Bullet.set_frame(type)
	if type == 7:
		damage_amount = 4

func _physics_process(delta):
	position += Vector2.RIGHT.rotated(rotation) * speed

#	if position.x < 0:
#		position.x = screensize.x
#	if position.x > screensize.x:
#		position.x = 0
#	if position.y < 0:
#		position.y = screensize.y
#	if position.y > screensize.y:
#		position.y = 0
func _on_Timer_timeout():
	queue_free()

func _on_Bullet_body_entered(body: Node):
	if body.has_method("damage"):
		body.damage(damage_amount)
#		get_node("CollisionShape2D").disabled = true
		  
		$Bullet.play("hit")
		speed = 2
		
		if type == 7:
			body.bullet_type = 7
			$AudioStreamPlayer2D3.play()
		else:
			$AudioStreamPlayer2D2.play()
			
		if is_instance_valid(shooter):
			shooter.health += 0.4
	else:
		rotation = rotation*-1
#func _process(delta):
#	$Bullet.rotation += 0.004
func _on_bullet_animation_finished():
	queue_free()

func _on_StartCollision_timeout():
		get_node("CollisionShape2D").disabled = false  
