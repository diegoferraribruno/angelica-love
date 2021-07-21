extends Area2D
var motion :=Vector2.ZERO
var shooter
var speed := 3
var acceleration := 0.1
var max_speed := 160
var damage_amount := -3
onready var screensize := get_viewport_rect().size
var type := 0
func _ready():
	type = rand_range(1,8)
	$Bullet.set_frame(type)

func _physics_process(delta):
	motion = Vector2(-0.4,0)
	position += (Vector2.LEFT - motion) * speed 

#func _process(delta):
#		$Bullet.rotation -= 0.006

func _on_Timer_timeout():
	queue_free()
	
func _on_Bullet_body_entered(body: Node):
	if body.has_method("damage"):
		body.damage(damage_amount)
		$Bullet.play("hit")
#		if type != 7:
		body.bullet_type = type
		if type == 7:
			body.covid.start()

func _on_bullet_animation_finished():
	queue_free()
