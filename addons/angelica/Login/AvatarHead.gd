extends RichTextLabel
var emoji = ""

func append_emoji(argument):
	emoji = argument
	bbcode_text = "[url][img]res://img/64/"+argument+".png[/img][/url]"
	$"EmojiPanel".visible = false

func _on_AvatarHead_meta_clicked(meta):
	$"EmojiPanel".visible = true
	pass # Replace with function body.
