extends Node2D
var icon = "1f426"
var mini = true
var close = true
var links = {
	"Angelica":"http://diegoferraribruno.itch.io/angelica",
	"Angelica Github":"https://github.com/diegoferraribruno/angelica-love",
	"Diego's twitter":"http://twitter.com/diegoferraribr1",
	"Diego's ko-fi":"https://ko-fi.com/diegoferraribruno",
#	"BBcode guide ":"https://docs.godotengine.org/pt_BR/latest/tutorials/gui/bbcode_in_richtextlabel.html"
	}
var hashtags = {
	"#indiegames":[
		"#gamedev",
		"#indiegame",
		"#gaming",
		"#indiedev",
		"#games",
		"#game",
		"#gamedev",
		"#IndieGameDev"
		],
	"#indieweek":[
		"#marketingmonday",
		"#whishlistwednesday",
		"#FollowFriday",
		"#ScreenShotSaturday",
		],
	"#FOSS":[
		"#creativecommons",
		"#GodotEngine",
		"#opensource",
		]
	}
func _ready():
	hashtag_menu()

func hashtag_menu():
	var bbcode = "[center]"
	for i in hashtags:
		bbcode += "[b][url="+i+"]"+i+"[/url] [/b]\n"
		for x in hashtags[i]:
			bbcode += "[url=" + x + "]" + x + "[/url] "
	$"Hashtags".bbcode_text = bbcode+"[/center]"

func links_menu():
	var bbcode = "[center]"
	for i in links:
		bbcode += "[url="+links[i]+"]"+i+"[/url] "
	$"Hashtags".bbcode_text = bbcode+"[/center]"



func _on_TextEdit_text_changed():
	var text = $"TextEdit".text
#	var text2 = $"TextEdit2".text
	var count  = text.length() #+ text2.length()
	if count <= 280:
		$"Count".bbcode_text = str(count)+"/280"
	else:
		$"Count".bbcode_text = "[color=red]"+str(count)+"/280[/color]"


func _on_Hashtags_meta_clicked(meta):
	var text := ""
	if meta in hashtags:
		for i in hashtags[meta]:
			 text += i+" "
		text += meta
	else:
		text = meta + " "
	$"TextEdit".insert_text_at_cursor(text)

func tweet(new_text):
	var openfile = false
	var tw_text = new_text
	var hashtags_text = ""
	tw_text = "https://twitter.com/intent/tweet?hashtags="+hashtags_text+"&text="+tw_text
	tw_text = tw_text.replace(" ","%20")
	tw_text = tw_text.replace("#","%23")
	tw_text = tw_text.replace("=%2c","=")
	OS.shell_open(tw_text)
#	if openfile == true:
#		OS.shell_open(OS.get_user_data_dir())


func _on_Buttons_meta_clicked(meta):
	if meta == "tweet":
		tweet($"TextEdit".text)
	elif meta == "folder":
		OS.shell_open(OS.get_user_data_dir())
	elif meta == "links":
		links_menu()
	elif meta == "hashtags":
		hashtag_menu()
	elif meta == "clear":
		$"TextEdit".text = ""
