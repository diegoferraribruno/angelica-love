extends KinematicBody2D

onready var Bullet = preload("res://src/scenes/Bullets/Bullet.tscn")
onready var covid = $Covid
onready var screensize := get_viewport_rect().size
onready var max_height := screensize.y/2
const max_health := 20
const anime_run_h := 18
var health := 20.0 setget set_health
var motion := Vector2.ZERO
var acceleration := 0.1
var max_speed := 160
var can_shoot = true
var morrendo := true
var face := 1
#var animation :="sface"
var drag := Vector2(-100,0)
var touch := false
var time := 0.01
var bullet_type := 0
var bag = {}
var friend_name = ""
onready var aimdirection = Vector2.ZERO

onready var mask = $mask
onready var health_bar = $Health
onready var cooldown = $Cooldown
onready var gun := $Gun
onready var bullet_spawnpoint = $Gun/Position2D
onready var corpo = $Body
var corpo_cor
var good = ["1f600","1f601","1f602","1f603","1f604","1f605","1f606","1f609","1f60a","1f60b","1f60e","1f60d","1f618","1f617","1f619","1f61a","263a","1f642","1f60c","1f913","1f61b","1f61c","1f61d","1f643","1f607","1f608"]
var bad = ["1f610","1f611","1f636","1f644","1f60f","1f623","1f625","1f62e","1f910","1f62f","1f62a","1f62b","1f634","1f924","1f612","1f613","1f614","1f615","2639","1f641","1f616","1f61e","1f61f","1f624","1f622","1f62d","1f626","1f627","1f628","1f629","1f62c","1f630","1f633","1f635","1f621","1f479","1f922","1f915","1f912","1f637"]

onready var happyface = good[rand_range(0,good.size())]
onready var sadface = bad[rand_range(0,bad.size())]
onready var user = get_node("../../../User").user
signal my_signal(joydirection)
func _ready():
	$"Label".visible = false
	get_node("../../../TouchControl").connect("intention", self, "aim_direction")
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
	face = rand_range(0, 16)
	corpo_cor = P1color[rand_range(0,6)]
	if user.has("friends"):
		var x = 0
		for i in user["friends"]:
			if str("Friend"+str(x)) == self.name:
				var cores =  user["friends"][i]["color"]
				if cores is Color:
					corpo_cor = cores
				else:
					cores = str2var("Color("+cores+")")
					corpo_cor = Color(cores)
				happyface = user["friends"][i]["happyface"]
				sadface = user["friends"][i]["sadface"]
				bullet_type = user["friends"][i]["bullet_type"]
				bag = user["friends"][i]["bag"]
				friend_name = user["friends"][i]["friend_name"]
				if friend_name != "Player":
					$"Label".bbcode_text = "[center]"+friend_name+"[/center]" 
					$"Label".visible = true
	corpo.modulate = corpo_cor
	mask.modulate = corpo_cor
	$"Baloon".modulate = corpo_cor
	$"Gun".modulate = corpo_cor
	corpo.play("stand")
		
	changeface("sadface")
		
		
func _physics_process(delta):
	self.health -= time
#	drag.x  = 0.5*health
		
	move(delta)
#	move_gun()
	if (Input.is_action_pressed("shoot") or touch == true) \
		&& can_shoot:
		shoot()
		
func aim_direction(direction2):
	aimdirection = direction2
	emit_signal("my_signal", aimdirection)
	
func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed():
			touch = true
		else:
			touch = false

func _process(_delta):
#	$AvatarHead.modulate.a = clamp(health/10 + 0.4,0.4,1)
	if health < 8:
		$Baloon.visible = true
		changeface("sadface")
		drag.x -= 0.2
	else:
		$Baloon.visible = false
	if health  > 12:
		mask.visible = true
	else:
		mask.visible = false
func _on_Cooldown_timeout():
	can_shoot = true
	$Gun/AnimatedSprite.set_frame(0)
	cooldown.wait_time = rand_range(0.4,1)
	
	aimdirection = position

func set_health(value:float):
	health = min(value, max_health)

	if health <= 0:
		queue_free()
	elif health >=20:
		health = 20
		if bullet_type == 7:
			$"AudioStreamPlayer2D".play()
			bullet_type = 0
	

func move(_delta):
	if position.x < -64:
		queue_free()
	motion = move_and_slide(drag)

func shoot():
	$Delay.wait_time = rand_range(0.01,0.2)
	$Delay.start()
	
func damage(damage: int):
	self.health -= damage
	if damage < 0:
		corpo.play("run-h")
		corpo.flip_h = true
		changeface("happyface")
		if position.x < screensize.x/2:
			drag = Vector2(3,0)
		else:
			drag = Vector2(-5,0)
			
	else:
		changeface("sadface")
		drag = Vector2(-60,0)
		corpo.play("stand")
			
		
func register():
	var friend = {"happyface":happyface,"sadface":sadface, "color":corpo_cor, "bag":bag, "friend_name":friend_name, "bullet_type":bullet_type }
	get_parent().friends[self.name] = friend

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
	shoot()
#	drag.x = -5
	pass

func _on_Area2D_body_exited(_body):
#	drag.x = -2
	pass

func changeface(animation):
#	var goodsize = good.size()
#	var badsize = bad.size()
	if animation == "happyface":
		$"AvatarHead".bbcode_text = "[img]res://img/32/"+happyface+".png[/img]"
	else:
		$"AvatarHead".bbcode_text = "[img]res://img/32/"+sadface+".png[/img]"
#	$AvatarHead.play(animation)
#	$AvatarHead.set_frame(face)
#	$AvatarHead.stop()


func _on_Timer_timeout():
	self.health = 18
	

func _on_AvatarHead_meta_clicked(meta):
	
	pass # Replace with function body.
