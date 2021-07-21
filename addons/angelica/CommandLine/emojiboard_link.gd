extends RichTextLabel

onready var emojiboard = load("res://addons/angelica/Themes/EmojiPanel.tscn")
onready var mini = $"../../../../Body/Mini"
onready var body = $"../../../../Body"

func _ready():
	connect("meta_clicked", self, "handle")
func handle(argument):
	if argument == "mini":
		if body.visible == true:
			mini.visible = !mini.visible
		if body.visible == false:
			body.visible = true
			mini.visible = true
	if argument == "emojipanel":
		$"../../../EmojiPanel".visible = !$"../../../EmojiPanel".visible
	if argument == "send":
		var send = $"../".text
		$"../".text = ""
		$"../../../"._on_LineEdit2_text_entered(send)
	pass # Replace with function body.
