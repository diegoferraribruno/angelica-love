extends Node2D

var joydirection := Vector2(0,0)
var aimdirection := Vector2(0,0)
var following = false
var size = 120

onready var joystick = $"Joystick"
onready var screensize = get_viewport().get_visible_rect().size

signal my_signal(joydirection)
signal my_signal2(joydirection)

func _ready():
	position = Vector2(170,screensize.y-140)
	
func _draw():
	draw_circle(Vector2(0,0),36,Color(0.8,0.8,0.8,0.2))
	draw_circle(Vector2(0,0),48,Color(0.8,0.8,0.8,0.2))
#	draw_circle(Vector2(0,0),20,Color(0.8,0.8,0.8,0.5))

func _process(delta):
	if joystick.following:
		var y = joystick.position.y / size *1.2
		var x = joystick.position.x / size *1.2
		joydirection = Vector2(x,y)
		aimdirection = joydirection + self.position
		emit_signal("my_signal2",joydirection)
	else:
		joystick.position = Vector2.ZERO
		joydirection = Vector2.ZERO
	emit_signal("my_signal", joydirection)


func _on_Area2D_area_exited(area):
	if area.name == "Area2D2":
		area.get_parent().following = false

func _on_Area2D_body_exited(body):
	if body.name == "Area2D2":
		body.get_parent().following = false

func _on_RichTextLabel_gui_input(event):
	pass # Replace with function body.
