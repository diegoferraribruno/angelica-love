extends RichTextLabel

onready var emoji = get_node("../").emoji

var categories = []
var category = ""

func _ready():
	var text = ""
	var lastcat = "people"
	for i in emoji:
		if not emoji[i]["category"] in categories:
			lastcat = emoji[i]["category"]
			categories.append(lastcat)
		if emoji[i]["category"] == "people":
			text = text+"[url="+i+"][img]res://img/32/"+i+".png[/img][/url]"
	constructmenu()
	append_bbcode(text)
	connect("meta_clicked", self, "handle")
	
func handle(argument):
	if argument in categories:
		category = argument
		bbcode_text = ""
		constructmenu()
		showlist()
	else:
		get_node("../../").append_emoji(argument)

func showlist():
	for i in emoji:
		if emoji[i]["category"] == category:
			append_bbcode("[url="+i+"][img]res://img/32/"+i+".png[/img][/url]")

func constructmenu():
	var x = 0
	for i in emoji:
		if x < 11 and emoji[i]["category"] == categories[x]:
			append_bbcode("[url="+emoji[i]["category"]+"][img]res://img/32/"+i+".png[/img][/url] ")
			x += 1
	append_bbcode("\n")

func _on_EmojiTable_meta_clicked(meta):
	pass # Replace with function body.
