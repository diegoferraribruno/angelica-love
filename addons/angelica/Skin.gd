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
			get_node("Body").visible = !get_node("Body").visible
		"dock":
			if has_node("Dock"):
				get_node("Dock").visible = !get_node("Dock").visible
			else:
				get_node("Body").synapse("dock")
