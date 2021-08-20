extends Node2D

onready var sprite = $"AnimatedSprite/AnimatedSprite"
onready var aimdirection = Vector2.RIGHT

func _ready():
	get_node("../").connect("my_signal", self, "aim_direction")


func _process(delta):
	var mouse = aimdirection
	look_at(mouse)
	if mouse.x < global_position.x:
		sprite.set_flip_h(false)
	else:
		sprite.set_flip_h(true)

func aim_direction(intention):
	aimdirection = intention*Vector2(100,100) + get_parent().position +Vector2(0.1,0.1)
