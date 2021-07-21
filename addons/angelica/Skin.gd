extends CanvasLayer
#
#func _ready():
#	get_tree().get_root().set_transparent_background(true)
#	if OS.get_name() != "HTML5":
#		OS.window_per_pixel_transparency_enabled = true

func _process(delta):
	if (Input.is_action_just_pressed("ui_help")):
		if $Body.visible == true:
			$Body.visible = false
		else:
			$Body.visible = true
		if $CommandBar.visible == true:
			$CommandBar.visible = false
		else:
			$CommandBar.visible = true
