extends RichTextLabel

onready var emojiboard = load("res://addons/angelica/Themes/EmojiPanel.tscn")
onready var keyboard = load("res://addons/angelica/keyboard/Keyboard.tscn")

func _on_emojiboard_link_meta_clicked(meta):
	if meta == "emojipanel":
		$"../EmojiPanel".visible = !$"../EmojiPanel".visible
	if meta == "send":
		var send = $"../TextEdit".text
		$"../TextEdit".text = ""
		$"../"._on_TextEdit_text_entered(send)
	if meta == "keyboard":
		if get_parent().has_node("Keyboard"):
			get_node("../Keyboard").queue_free()
		else:
			var instance = keyboard.instance()
			get_parent().add_child(instance)
	if meta == "fx":
		$"../Editor".visible = not $"../Editor".visible
		
