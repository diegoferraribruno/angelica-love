extends RichTextLabel

func _ready():
	visible_characters = 0
	set_selection_enabled(true)
#	bbcode_text = "[url=save][save][/url] [url=pong][pong][/url] [url=volume][volume][/url] [url=edit menu][menu][/url] [url=bye][Bye!][/url] [url=hide][hide][/url] [url=mini][mini][/url] [url=link ko-fi][k-f][/url]"
	connect("meta_clicked", self, "handle")
func handle(argument):
	get_node("../../").input_entered(argument)
	if str(argument).begins_with("http"):
		OS.shell_open(argument)
func _process(delta):
	var total = self.get_total_character_count()
	if visible_characters < total:
		visible_characters +=20

func _on_SendButton_button_up():
	var total = self.get_total_character_count()
	visible_characters = total

func _on_LineEdit_text_entered(new_text):
	var total = self.get_total_character_count()
	visible_characters = total
