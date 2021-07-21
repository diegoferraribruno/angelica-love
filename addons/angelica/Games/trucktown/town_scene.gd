extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().get_root().set_transparent_background(false)
#	if OS.get_name() != "HTML5":
#		OS.window_per_pixel_transparency_enabled = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
