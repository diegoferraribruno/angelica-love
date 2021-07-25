extends RichTextLabel

var emoji = ""

func append_emoji(argument):
	emoji = argument
	$"AvatarHead".bbcode_text = "[url][img]res://img/64/"+argument+".png[/img][/url]"
	$"EmojiPanel".visible = false


func _on_Player_mouse_entered():
	$"EmojiPanel".visible = true
	pass # Replace with function body.

