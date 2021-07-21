extends Area2D

const MOVE_SPEED = 100

var _ball_dir
var _up
var _down
var input = 0
onready var _screen_size_y = get_viewport_rect().size.y

func _ready():
	var n = name.to_lower()
	_up = n + "_move_up"
	_down = n + "_move_down"
	if n == "left":
		_ball_dir = 1
	else:
		_ball_dir = -1

func _process(delta):
	# Move up and down based on input.
#	var input = Input.get_action_strength(_down) - Input.get_action_strength(_up)
#	print(input)
	position.y = clamp(position.y + input * MOVE_SPEED * delta, 30, 294)
	
	

func _on_area_entered(area):
	if area.name == "Ball":
		# Assign new direction.
		area.direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
		$"../AudioRight".play()


func _on_Left_area_entered(area):
	pass # Replace with function body.


func _on_Right_area_entered(area):
	pass # Replace with function body.


func _on_left_control_meta_hover_started(meta):
	match meta:
		"up":
			input = -1
		"down":
			input =1

func _on_right_control_meta_hover_started(meta):
	match meta:
		"up":
			input = -1
		"down":
			input = 1

func _on_left_control_meta_hover_ended(meta):
	input = 0
	
func _on_right_control_meta_hover_ended(meta):
	input = 0
