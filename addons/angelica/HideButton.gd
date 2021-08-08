extends Node2D

func _ready():
	get_tree().root.connect("size_changed", self, "_on_viewport_size_changed")
	_on_viewport_size_changed()
	
func _on_viewport_size_changed():
	var screensize = get_viewport_rect().size
	position = Vector2(screensize.x-96,16)
