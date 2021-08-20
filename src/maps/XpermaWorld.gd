extends Node2D

var initialize = [
	"glow on",
	"hide on"
#	"title [center][rainbow]This is how it all started...[/rainbow][/center]",
#	"dj clear",
#	"dj play playing",
#	"track fps",
	]
func _ready():
	for i in initialize:
		get_node("../../Body").input_entered(i)

#
#func _on_XpermaWorld_tree_exiting():
#	get_node("../../Body").input_entered("glow off")
