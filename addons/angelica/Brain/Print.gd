extends RichTextLabel
onready var angelica = get_node("../")
onready var tips_text = get_node("../../Hint/Text")
onready var tips = get_node("../../Hint")

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

func _on_Interface_meta_hover_started(meta):
	#	angelica.text_to_say("link to "+str(meta))
	tips_text.visible = true
#	get_node("../../FootPrints/Tips").text = "Link: "+str(meta)
	tips_text.bbcode_text = str("[wave amp=20 freq=-4] "+meta+"[/wave]")
	tips.position = Vector2(20,get_local_mouse_position().y-10)
	pass # Replace with function body.


func _on_Interface_meta_hover_ended(meta):
	tips_text.visible = false


func _on_Interface2_meta_hover_ended(meta):
		#	angelica.text_to_say("link to "+str(meta))
	tips_text.visible = true
#	get_node("../../FootPrints/Tips").text = "Link: "+str(meta)
	tips_text.bbcode_text = str("[wave amp=20 freq=-4] "+meta+"[/wave]")
	tips.position = Vector2(20,get_local_mouse_position().y-10)
	pass # Replace with function body.
	pass # Replace with function body.
