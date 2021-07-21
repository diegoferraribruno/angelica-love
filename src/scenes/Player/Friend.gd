
extends KinematicBody2D

export var Bullet : PackedScene
onready var screensize := get_viewport_rect().size
const max_health := 10
const anime_run_h := 16
var health := 10.0 setget set_health
var motion := Vector2.ZERO
var acceleration := 0.1
var max_speed := 160
var can_shoot = true

onready var health_bar = $Health
onready var cooldown = $Cooldown
onready var gun := $Gun
onready var bullet_spawnpoint = $Gun/Position2D
onready var body = $Body

func _ready():
	var P1color = [
		Color(1.0, 1.0, 1.0),
		Color(2.0, 0.2, 1.0),
		Color(1.0, 1.8, 1.0),
		Color(1.0, 1.0, 1.8),
		Color(1.8, 0.7, 1.8),
		Color(1.0, 0.5, 1.0),
		Color(0.3, 2.0, 1.0),
		Color(0.3, 2.0, 1.0),
	]
	var corpo_cor = P1color[0]
	body.modulate = Color(P1color[rand_range(0,6)])
	$headface.set_frame(rand_range(0, 74))

func _physics_process(delta):
	self.health -= 0.005
	if health < 1:
		self.modulate = Color(1,1,1,health)
		
	move(delta)
#	move_gun()
	if Input.is_action_pressed("shoot") \
		&& can_shoot:
		shoot()

func _on_Cooldown_timeout():
	can_shoot = true
	$Gun/AnimatedSprite.set_frame(0)

func set_health(value:float):
	health = min(value, max_health)
#	health_bar.value = health
		
	if health <= 0:
		queue_free()

func move(delta):
	if position.x < 0:
		position.x = screensize.x
	if position.x > screensize.x:
		position.x = 0
	if position.y < 0:
		position.y = screensize.y
	if position.y > screensize.y:
		position.y = 0
	
	motion = lerp(
		motion,
		Vector2(
			(
				Input.get_action_strength("ui_right") / 2
				- Input.get_action_strength("ui_left")
			),
			(
				Input.get_action_strength("ui_down")
				- Input.get_action_strength("ui_up")
			)
		) * max_speed,
		acceleration
	)
	motion = move_and_slide(motion)
	
	if motion.x < -anime_run_h:
		body.play("run-h")
		body.flip_h = false
	elif motion.x > anime_run_h:
		body.play("run-h")
		body.flip_h = true
	elif motion.y > anime_run_h or motion.y < -anime_run_h:
		body.play("run-v")
	else:
		body.flip_h = true
		body.play("run-h")

func shoot():
	var bullet = Bullet.instance()
	bullet.global_position = bullet_spawnpoint.global_position
	bullet.shooter = self
	get_parent().add_child(bullet)
	
	can_shoot = false
	cooldown.start()
	$Gun/AnimatedSprite.set_frame(1)

func damage(damage: int):
	self.health -= damage
	
