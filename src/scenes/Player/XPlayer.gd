extends KinematicBody2D

export var Bullet : PackedScene
onready var covid = $Covid
onready var screensize := get_viewport_rect().size
const max_health := 20
const anime_run_h := 18
var health := 20.0 setget set_health
var motion := Vector2.ZERO
var acceleration := 0.05
var max_speed := 160
var can_shoot = true
var morrendo := false
var face := 1
var animation :="happyface"
var drag := Vector2(0,-0.6)
var touch := true
var time := 0.02
var bullet_type := 0

onready var health_bar = $Health
onready var cooldown = $Cooldown
onready var gun := $Gun
onready var bullet_spawnpoint = $Gun/Position2D
onready var body = $Body/Sprite

func _ready():
	var P1color = [
		Color(2.0, 4.0, 0.7),
		Color(2.0, 0.2, 0.8),
		Color(1.0, 1.8, 1.0),
		Color(1.0, 1.0, 1.8),
		Color(1.8, 0.7, 1.8),
		Color(1.0, 0.5, 0.1),
		Color(0.3, 2.0, 1.0),
		Color(0.3, 0.0, 1.0),
	]
	var corpo_cor = P1color[0]
	body.modulate = Color(P1color[rand_range(0,6)])
	face = rand_range(0, 16)
	changeface("happyface")
	

func _physics_process(delta):
	self.health -= time
#	drag.x  = 0.5*health
		
	move(delta)
#	move_gun()
	if (Input.is_action_pressed("shoot") or touch == true) \
		&& can_shoot:
		shoot()
		
func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed():
			touch = true
		else:
			touch = false
func _process(delta):
	$headface.modulate.a  = clamp(health/10 + 0.4,0,1)
	body.modulate.a  = health/10
	if health < 6:
		$Baloon.visible = true
		changeface("sadface")
	else:
		$Baloon.visible = false
		changeface("happyface")
		
	if health  > 10:
		$"headface/mask720".visible = true
	else:
		$"headface/mask720".visible = false
func _on_Cooldown_timeout():
	can_shoot = true
	$Gun/AnimatedSprite.set_frame(0)
	cooldown.wait_time = rand_range(0.1,0.7)

func set_health(value:float):
	health = min(value, max_health)
#	health_bar.value = health
		
	if health <= 0:
		queue_free()
	elif health >=20:
		health = 20
		if bullet_type == 7:
			$"AudioStreamPlayer2D".play()
			bullet_type = 0
	

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
				Input.get_action_strength("ui_right")
				- Input.get_action_strength("ui_left")
			),
			(
				Input.get_action_strength("ui_down")
				- Input.get_action_strength("ui_up")
			)
		) * max_speed*rand_range(0.2,1.3),
		acceleration
	)
	motion = motion + drag
	motion = move_and_slide(motion)
	
#	if motion.y > 0:
##		body.play("run-h")
#		body.flip_v = true
#		$Body.position.y = -34
##		$Body.look_at(screensize)
#	else:
#		body.flip_v = false
##		$Body.look_at(screensize)
#		$Body.position.y = 0
#	if motion.x > 0:
###		body.play("run-h")
##		$Body.rotation_degrees(45)
#		body.flip_h = false
#	else:
##		$Body.look_at(screensize)
#		body.flip_h = true
##		 body.flip_h = false
#	elif motion.y < -anime_run_h:
#		body.flip_h = true

#		body.play("run-h")

func shoot():
#	var bullet = Bullet.instance()
#	bullet.global_position = bullet_spawnpoint.global_position
#	bullet.shooter = self
#	get_parent().add_child(bullet)
#
#	can_shoot = false
#	cooldown.start()
#	$Gun/AnimatedSprite.set_frame(1)
	$Delay.wait_time = rand_range(0.01,0.2)
	$Delay.start()
	
func damage(damage: int):
	self.health -= damage
	
func _on_Delay_timeout():
	var bullet = Bullet.instance()
	bullet.global_position = bullet_spawnpoint.global_position
	bullet.shooter = self
	bullet.type = bullet_type
	get_parent().add_child(bullet)
	
	can_shoot = false
	cooldown.start()
	$Gun/AnimatedSprite.set_frame(1)

func _on_Area2D_body_entered(body):
	drag.x = -5

func _on_Area2D_body_exited(body):
	drag.x = -2

func changeface(animation):
	$headface.play(animation)
	$headface.set_frame(face)
	$headface.stop()


func _on_Timer_timeout():
	self.health = 18
	
