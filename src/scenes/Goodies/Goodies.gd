extends Area2D
var motion := Vector2.LEFT - Vector2(-0.4,0)
var shooter
var speed := 3
var acceleration := 0.1
var max_speed := 160
var damage_amount := -10
onready var screensize := get_viewport_rect().size
var type := 0
func _ready():
	type = rand_range(1,8)
	$Bullet.set_frame(type)

func _physics_process(delta):
	position += motion * speed 

#func _process(delta):
#		$Bullet.rotation -= 0.006

func _on_Timer_timeout():
	queue_free()
	
func _on_Bullet_body_entered(body: Node):
	if body.has_method("damage"):
		body.damage(damage_amount)
		$Bullet.play("hit")
		$"AudioStreamPlayer2D3".play()
#		if type != 7:
		body.bullet_type = type
		if type == 7:
			body.covid.start()
			

func _on_bullet_animation_finished():
	queue_free()
