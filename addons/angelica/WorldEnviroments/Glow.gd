extends Node2D

onready var GLES2 = load("res://addons/angelica/WorldEnviroments/WorldEnviromentGLS2.tscn")
onready var GLES3 = load("res://addons/angelica/WorldEnviroments/WorldEnviromentGLS3.tscn")

var icon = "1f4a1"
var close = true
var mini = true

func _ready():
	if OS.get_current_video_driver() == 0:
		var instance = GLES3.instance()
		add_child(instance)
	else:
		var instance = GLES2.instance()
		add_child(instance)
