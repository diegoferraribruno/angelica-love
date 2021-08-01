extends Node2D
var icon = "2328"
var mini = true

func _ready():
	$"TextEdit".text = $"../RichTextLabel".bbcode_text

func append_emoji(argument):
	$"TextEdit".text += "[img]res://img/48/"+argument+".png[/img]"

func _on_RichTextLabel_meta_clicked(meta):
	match meta:
		"emoji":
			$"EmojiPanel".visible = !$"EmojiPanel".visible
		"update text":
			$"../RichTextLabel".bbcode_text = $"TextEdit".text
			visible = false
		"save":
			pass
		"wave":
			add_to_text("[wave]","[/wave]")
		"rainbow":
			add_to_text("[rainbow]","[/rainbow]")
		"tornado":
			 add_to_text("[tornado radius=5 freq=2]","[/tornado]")
		"shake":
			add_to_text("[shake rate=5 level=10]","[/shake]")

func add_to_text(pre,post):
	$"TextEdit".text = pre+$"TextEdit".text+post
#	text.insert()
