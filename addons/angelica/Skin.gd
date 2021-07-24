extends CanvasLayer

func _process(delta):
	if (Input.is_action_just_pressed("ui_help")):
		if $Body.visible == true:
			$Body.visible = false
		else:
			$Body.visible = true
#	$CommandBar.visible = true
