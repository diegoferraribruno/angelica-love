extends MarginContainer

var margin_value =60
func ready():
	get_node("../").connect("my_signal", self, "aim_direction")
	add_constant_override("margin_top",-margin_value)
	add_constant_override("margin_left", -margin_value)
	add_constant_override("margin_bottom", margin_value)
func _process(delta):
	update()
func aim_direction(size):
	add_constant_override("margin_right", 200)
##	var size  = get_node("../../").aimdirection
	var sum = (size.x+size.y)/20
#	margin_right = 26 + 2*sum
	
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
##	pass
