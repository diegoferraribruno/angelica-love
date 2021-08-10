extends RichTextLabel

onready var emojiboard = load("res://addons/angelica/Themes/EmojiPanel.tscn")

func _on_emojiboard_link_meta_clicked(meta):
	if meta == "emojipanel":
		$"../../EmojiPanel".visible = !$"../../EmojiPanel".visible
	if meta == "send":
		var send = $"../".text
		$"../".text = ""
		$"../../"._on_TextEdit_text_entered(send)
	if meta == "editor":
		$"../../Editor".visible = not $"../../Editor".visible
