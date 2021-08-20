extends KinematicBody2D
var joydirection := Vector2(0,0)
var aimdirection := Vector2(0,0)
var following = false
var motion := Vector2.RIGHT
var acceleration = 2
onready var joystick = $"Joystick"
var size = 200
signal my_signal(joydirection)
onready var screensize = get_viewport().get_visible_rect().size
#
#func _ready():
#	position = Vector2(120,screensize.y-120)
	
func _draw():
	draw_circle(Vector2(0,0),32,Color(0.5,0.5,0.5,0.1))
#	draw_circle(Vector2(0,0),20,Color(0.8,0.7,0.3,0.5))

func _process(delta):
	aimdirection = position + aimdirection
	
	$AvatarHead.modulate.a  = clamp(health/10 + 0.4,0.4,1)
	if health < 6:
		$Baloon.visible = true
	else:
		$Baloon.visible = false
		
	if health  > 10:
		mask.visible = true
	else:
		mask.visible = false
	if joystick.following:
		var y = joystick.position.y / size *1.2
		var x = joystick.position.x / size *1.2
		joydirection = Vector2(x,y)
		aimdirection = joydirection *1000
	else:
		joystick.position = Vector2.ZERO
		joydirection = Vector2.ZERO
	
	position += joydirection + Vector2(
			Input.get_action_strength("ui_right")
			- Input.get_action_strength("ui_left")
		,
		
			Input.get_action_strength("ui_down")
			- Input.get_action_strength("ui_up")
		)*delta*100
		
	emit_signal("my_signal", joydirection)


func _on_Area2D_area_exited(area):
	if area.name == "Area2D2":
		area.get_parent().following = false

func _on_Area2D_body_exited(body):
	print (body)
	if body.name == "Area2D2":
		body.get_parent().following = false

func _on_RichTextLabel_gui_input(event):
	pass # Replace with function body.
	
#signal my_signal(joydirection)

export var Bullet = preload("res://src/scenes/Bullets/Bullet.tscn")
onready var covid = $Covid
#onready var screensize := get_viewport_rect().size
onready var max_height = screensize.y/3
const max_health := 30
const anime_run_h := 18
var health := 20.0 setget set_health
#var motion := Vector2.ZERO
#var acceleration := 0.1
var max_speed := 160
var can_shoot = true
var morrendo := false
var face := 1
var animation :="happyface"
var drag := Vector2(0.5,0)
var touch := false
var time := 0.02
var bullet_type := 0
var uidirection = Vector2.ZERO
#onready var aimdirection = Vector2.ZERO

onready var mask = $mask
onready var health_bar = $Health
onready var cooldown = $Cooldown
onready var gun := $Gun
onready var bullet_spawnpoint = $Gun/Position2D
onready var corpo = $Body
onready var user = get_node("../../../User").user

var good = ["1f600","1f601","1f602","1f603","1f604","1f605","1f606","1f609","1f60a","1f60b","1f60e","1f60d","1f618","1f617","1f619","1f61a","263a","1f642","1f60c","1f913","1f61b","1f61c","1f61d","1f643","1f607","1f608"]
var bad = ["1f610","1f611","1f636","1f644","1f60f","1f623","1f625","1f62e","1f910","1f62f","1f62a","1f62b","1f634","1f924","1f612","1f613","1f614","1f615","2639","1f641","1f616","1f61e","1f61f","1f624","1f622","1f62d","1f626","1f627","1f628","1f629","1f62c","1f630","1f633","1f635","1f621","1f479","1f922","1f915","1f912","1f637"]


func _ready():
	get_node("../../../TouchControl").connect("direction", self, "ui_direction")
	get_node("../../../TouchControl").connect("intention", self, "aim_direction")
#	var P1color = [
#		Color(2.0, 4.0, 0.7),
#		Color(2.0, 0.2, 0.8),
#		Color(1.0, 1.8, 1.0),
#		Color(1.0, 1.0, 1.8),
#		Color(1.8, 0.7, 1.8),
#		Color(1.0, 0.5, 0.1),
#		Color(0.3, 2.0, 1.0),
#		Color(0.3, 0.0, 1.0),
#	]
#	var corpo_cor = P1color[rand_range(0,6)]
	var corpo_cor = user["color"]
	corpo.modulate = Color(corpo_cor)
	mask.modulate = Color(corpo_cor)
	$"Baloon".modulate = Color(corpo_cor)
	$"Gun".modulate = Color(corpo_cor)
	$"Label".modulate = Color(corpo_cor)
	
	face = rand_range(0, 16)
	changeface("happyface")
	$Label.bbcode_text = "[center]"+user["name"]+"[/center]"

func ui_direction(direction):
	uidirection = direction

func aim_direction(joydirection):
	aimdirection = joydirection
	emit_signal("my_signal", joydirection)

func _physics_process(delta):
#	move(delta)
	self.health -= time
	if (Input.is_action_pressed("shoot") or touch == true) \
		&& can_shoot:
		shoot()
		
func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed():
			touch = true
		else:
			touch = false

func _on_Cooldown_timeout():
	can_shoot = true
	$Gun/AnimatedSprite.set_frame(0)
	cooldown.wait_time = rand_range(0.1,0.7)

func set_health(value:float):
	health = min(value, max_health)
		
	if health <= 0:
		queue_free()
	elif health >=20:
		health = 20
		if bullet_type == 7:
			$"AudioStreamPlayer2D".play()
			bullet_type = 0

#func move(_delta):
#	if position.x < 16:
#		position.x = 16 #screensize.x
#	if position.x > screensize.x:
#		position.x = screensize.x
#	if position.y < max_height:
#		position.y = max_height
#	if position.y > screensize.y-8:
#		position.y = screensize.y-8
#
#	motion = lerp(
#		motion,
#		(Vector2(
#			(
#				Input.get_action_strength("ui_right")
#				- Input.get_action_strength("ui_left")
#			),
#			(
#				Input.get_action_strength("ui_down")
#				- Input.get_action_strength("ui_up")
#			)
#		)+ uidirection) * max_speed*rand_range(0.2,1.3),
#		acceleration
#	)
#	motion = motion + drag
#	motion = move_and_slide(motion)
#
#	if motion.x < -anime_run_h:
#		corpo.play("run-h")
#		corpo.flip_h = false
#	elif motion.x > anime_run_h:
#		corpo.play("run-h")
#		corpo.flip_h = true
#	elif motion.y > anime_run_h or motion.y < -anime_run_h:
#		corpo.play("run-v")
#	else:
#		corpo.flip_h = true
#		corpo.play("run-h")

func shoot():
	var bullet = Bullet.instance()
	bullet.global_position = bullet_spawnpoint.global_position
	bullet.shooter = self
	bullet.type = bullet_type
	get_parent().add_child(bullet)
	
	can_shoot = false
	cooldown.start()
	$Gun/AnimatedSprite.set_frame(1)

func damage(damage: int):
	self.health -= damage

func _on_Area2D_body_entered(body):
	shoot()
	drag.x = -10

func changeface(animation):
	var user_face = user["emoji"]
	var goodsize = good.size()
	var badsize = bad.size()
	if animation == "happyface":
		$"AvatarHead".bbcode_text = "[img]res://img/32/"+user_face+".png[/img]"
	else:
		$"AvatarHead".bbcode_text = "[img]res://img/32/"+bad[rand_range(0,badsize)]+".png[/img]"

func _on_Timer_timeout():
	self.health = 18

func _on_AvatarHead_meta_clicked(meta):
	pass



func _on_Covid_timeout():
	pass # Replace with function body.


func _on_Delay_timeout():
	pass # Replace with function body.
