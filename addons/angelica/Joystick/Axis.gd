extends MarginContainer

var margin_value = 32
var sum = 0
var size = Vector2(0,1)

func ready():
	add_constant_override("margin_top",-margin_value)
	add_constant_override("margin_left", -margin_value)
	add_constant_override("margin_bottom", margin_value)

func _process(delta):
	var joyposition  = get_node("../../").joydirection
	var square = sqrt( (joyposition.x * joyposition.x) + (joyposition.y * joyposition.y) )
	sum = margin_value * -square*2.5
	add_constant_override("margin_right", sum)
	if square >= 0.46:
		$"../AnimatedSprite/AnimatedSprite".play("walk")
		$"../AnimatedSprite/AnimatedSprite".speed_scale = clamp(1+int(square*1.5),1,1.5)
	else:
		$"../AnimatedSprite/AnimatedSprite".play("default")
