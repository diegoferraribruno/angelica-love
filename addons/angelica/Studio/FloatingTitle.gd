extends Node2D
var mini = true

func _ready():
	get_tree().root.connect("size_changed", self, "_on_viewport_size_changed")
	_on_viewport_size_changed()

func _on_viewport_size_changed():
	var screensize = get_viewport_rect().size
	$"Title".margin_right = screensize.x-64
	$"Title".margin_left = 64
