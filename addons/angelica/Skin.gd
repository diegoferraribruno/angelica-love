extends CanvasLayer
var apps = {}

func add_app(app,app_xy):
	$User.user[app] = {}
	$User.user[app]["position"] = var2str(app_xy)
	apps[app] = {}
	apps[app]["position"] = app_xy
	if $User.user["name"] != "Player":
		$Body.save_prefs()
 
func quit():
	get_node("Body").quit()

func ai_say(argument):
	get_node("Body").ai_say(argument)

func _on_AngelicaButton_meta_clicked(meta):
	match meta:
		"hide":
			if get_node("Body").visible ==  true:
				get_node("Body").visible = false
				if has_node("Dock"):
					get_node("Dock").visible = false
			else:
				get_node("Body").visible = true
				if has_node("Dock"):
					get_node("Dock").visible = true
				else:
					get_node("Body/Phone").visible = true
		"hide on":
			if get_node("Body").visible ==  true:
				get_node("Body").visible = false
			if has_node("Dock"):
					get_node("Dock").visible = false
