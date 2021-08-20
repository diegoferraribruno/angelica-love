extends Node2D
var joydirection := Vector2(0,0)
onready var aimdirection = joydirection
var following = false
onready var joystick = $"Joystick"
var size = 60
signal my_signal2(joydirection)
onready var screensize = get_viewport().get_visible_rect().size

func _ready():
	position = Vector2(screensize.x-100,screensize.y-100)

func _draw():
	draw_circle(Vector2(0,0),60,Color(1,1,1,0.1))

func _on_Area2D_area_exited(area):
	if area.name == "Area2D2":
		area.get_parent().following = false

func _on_Area2D_body_exited(body):
	print (body)
	if body.name == "Area2D2":
		body.get_parent().following = false


func _process(delta):
	joydirection = joystick.position
	aimdirection = joydirection + self.position
	emit_signal("my_signal2", joydirection)
