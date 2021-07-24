extends Node2D
var new_position = Vector2(0,80)
var fps_count
var close = false
var icon = "1f3af"
#
#func _ready():
#	position = new_position
func _process(delta):
	fps_count = Engine.get_frames_per_second()
	fps_count = "FPS: " + str(fps_count)
	$Object.text = str(fps_count)
func change_position(new):
	position = new_position
