extends Node2D
var close = true
var about = {
	"title":"Chat",
	"version":"140",
	"position":position,
	"fullscreen_pos":Vector2(),
	"windowed_pos":Vector2(),
	"supermenu_h":["minithis","\n"],
	"suppermenu_v":["clear","edit chat","copy all","list links","list notes"],
}

func _ready():
	pass # Replace with function body.
func append_emoji(argument):
	$"Interface".append_bbcode("[img]res://addons/angelica/images/16/"+argument+".png[/img]")
	
