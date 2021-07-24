extends RichTextLabel

onready var emojiboard = load("res://addons/angelica/Themes/EmojiPanel.tscn")
#onready var mini = $"../../../../Body/Mini"
#onready var body = $"../../../../Body"

func _ready():
	connect("meta_clicked", self, "handle")
func handle(argument):
	if argument == "emojipanel":
		$"../../EmojiPanel".visible = !$"../../EmojiPanel".visible
	if argument == "send":
		var send = $"../".text
		$"../".text = ""
		$"../../"._on_LineEdit_text_entered(send)
	pass # Replace with function body.


func _on_emojiboard_link_meta_clicked(meta):
	pass # Replace with function body.
