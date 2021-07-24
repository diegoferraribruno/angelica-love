extends Node2D
var close = true
var icon = "1f3d3"
var initialize = [
	"title [center][rainbow]Its Pong Time![/rainbow][/center]",
	"volume",
	"volume",
	"volume",
	"dj clear",
	"dj play playing",
	"track fps",
	]
var quit = [
	"title",
	"dj clear"
]

func _ready():
	for i in initialize:
		get_node("../../Body").input_entered(i)
func quit():
	for i in quit:
		get_node("../../Body").input_entered(i)
