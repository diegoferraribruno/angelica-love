extends Node2D
var close = true
var icon = "1f3d3"
var initialize = [
	"title [center][color=red]Its Pong Time![/color][/center]",
	"hide on"
#	"volume",
#	"volume",
#	"volume",
#	"dj clear",
#	"dj play Pong-01",
#	"track fps",
	]
func _ready():
	for i in initialize:
		get_node("../../Body").input_entered(i)
	position = get_node("../../Body").screensize/2-Vector2(320,160)
