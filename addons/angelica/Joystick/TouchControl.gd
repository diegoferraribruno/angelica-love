extends Control

onready var joydirection = Vector2.ZERO
onready var joyintention = Vector2.ZERO

signal direction(joydirection)
signal intention(joyintention)

func _ready():
	get_node("LeftControl").connect("my_signal", self, "ui_direction")
	get_node("LeftControl").connect("my_signal2", self, "ui_intention")
	
func ui_intention(intention):
	var limit = 0.1
	if joydirection.x > limit:
		joydirection.x = 1
	if joydirection.x < -limit:
		joydirection.x = -1
	if joydirection.y > limit:
		joydirection.y = 1
	if joydirection.y < -limit:
		joydirection.y = -1
	joyintention = intention*Vector2(200,200)
	emit_signal("intention",joyintention)
	
func ui_direction(direction):
	var limit = 1
	var min_limit = 0.46
	joydirection = direction
	if joydirection.x > limit:
		joydirection.x = 1
	if joydirection.x < -limit:
		joydirection.x = -1
	if joydirection.y > limit:
		joydirection.y = 1
	if joydirection.y < -limit:
		joydirection.y = -1
	if joydirection.x < min_limit and joydirection.x > -min_limit:
		joydirection.x = 0
	if joydirection.y < min_limit and joydirection.y > -min_limit:
		joydirection.y = 0
	
	emit_signal("direction", joydirection)
