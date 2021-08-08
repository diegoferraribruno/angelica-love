extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var _ball_dir = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouse = get_local_mouse_position()
	move_and_slide(mouse*delta*500)
	

func _on_Area2D_area_entered(area):
	if area.name == "Ball":
		# Assign new direction.
#		area._speed += 10 
		area.direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
		$"../AudioRight".play()
