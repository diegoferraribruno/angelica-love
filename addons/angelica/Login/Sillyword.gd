extends LineEdit

func append_emoji(argument):
	text += argument


func _on_Sillyword_focus_entered():
	$"EmojiPanel".visible = true
	pass # Replace with function body.
