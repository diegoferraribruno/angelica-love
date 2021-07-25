extends KinematicBody2D
var emoji = ""

func append_emoji(argument):
	get_parent().emoji = argument
	get_node("AvatarHead").bbcode_text = "[url][img]res://img/32/"+argument+".png[/img][/url]"
	$"EmojiPanel".visible = false


func _on_Player_mouse_entered():
	$"EmojiPanel".visible = true

func _on_AvatarHead_meta_clicked(meta):
	$"EmojiPanel".visible = true
