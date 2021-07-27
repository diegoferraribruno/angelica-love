extends Node2D

var close = true
var icon = "1f4db"
var good = ["1f600","1f601","1f602","1f603","1f604","1f605","1f606","1f609","1f60a","1f60b","1f60e","1f60d","1f618","1f617","1f619","1f61a","263a","1f642","1f60c","1f913","1f61b","1f61c","1f61d","1f643","1f607","1f608"]
var bad = ["1f610","1f611","1f636","1f644","1f60f","1f623","1f625","1f62e","1f910","1f62f","1f62a","1f62b","1f634","1f924","1f612","1f613","1f614","1f615","2639","1f641","1f616","1f61e","1f61f","1f624","1f622","1f62d","1f626","1f627","1f628","1f629","1f62c","1f630","1f633","1f635","1f621","1f479","1f922","1f915","1f912","1f637"]
var rgb = [1,1,1]

onready var body = get_node("../Body")
onready var user = get_node("../User").user
onready var emoji = user["emoji"]
var user_list = {}
var FILE_NAME = "user://users"

func _ready():
	randomize()
	var goodsize = good.size()
	var head = good[rand_range(0,goodsize)]
	$"Player/AvatarHead".bbcode_text = "[url=res://img/32/1f605.png][img]res://img/32/"+head+".png[/img][/url]"
	$"Player".emoji = head
	load_user_list()
 
func load_user_list():
	var file = File.new()
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			user_list = data
			if data.size() == 0:
				get_node("../Body").ai_say("OH! oh nobdy registered yet")
			else:
				$"LoadPlayer".visible
				for i in user_list:
					$"LoadPlayer/RichTextLabel".bbcode_text += "[center][url="+i+"][img]res://img/16/"+user_list[i]["emoji"]+".png[/img][color="+user_list[i]["color"]+"] "+i+"[/color][/url][/center]"
					
#			lastposition = ai_prefs[11]
#			get_node("../Body").ai_say("OH! it is you [b][color="+user["color"]+"]"+user["name"]+"[/color][/b]?")
	else:
			new_user_list()
#			printerr("No saved data! type 'save' to make a new file. \n Remember to aways save after making changes.")


func new_user_list():
	var file = File.new()
	file.open(FILE_NAME, File.WRITE)
	file.store_string(to_json(user_list))
	file.close()
	get_node("../Body").ai_say("users file created")
	
		
func new_user():
	var pre = "user://"+user["name"]
	var dirs = ["","/notes","/screenshots","/preferences","/music"]
	var directory = Directory.new()
	for i in dirs:
		var dir = pre+i
		directory.make_dir(dir)
		print (dir)

func append_emoji(argument):
#	$"Player".emoji = argument
	$"Sillyword".text += '"'+argument+'",'
	
func change_emoji(argument):
	$"Player".emoji = argument
	user["emoji"] = argument
#	$"Sillyword".text += '"'+argument+'",'
	$"Player/AvatarHead".bbcode_text = "[img]res://img/32/"+argument+".png[/img]"

func _on_LineEdit_text_entered(new_text):
	$"LineEdit".focus_next
	$"Sillyword".grab_focus

func _on_Login_meta_clicked(meta):
	match meta:
		"login":
			var name = $"LineEdit".text
			if name != "":
				if name in user_list:
					if check_silly_word(name) == true:
						get_node("../Body").ai_say("match password")
						user["name"] = name
	#					user["emoji"] = emoji
						user_list[name]["emoji"] = user["emoji"]
						user_list[name]["color"] = user["color"]
						user_list[name]["rgb"] = user["rgb"]
						new_user_list()
						body.synapse("chat")
						self.queue_free()
				else:
					var user_details = {"name":name,"emoji":user["emoji"], "color":user["color"], "sillyword":$"Sillyword".text}
					user_list[name] = user_details
			else:
				get_node("../Body").ai_say("Please write a user name.")
		"cancel":
			$"LineEdit".text = ""
			$"Sillyword".text = ""

func check_silly_word(name):
	var savedsillyword = user_list[name]["sillyword"]
	if $"Sillyword".text == savedsillyword :
		print(savedsillyword)
		return true
	else:
		get_node("../Body").ai_say("Silly Word does not match")
		return false
		
func modulate():
	var color = Color(rgb[0],rgb[1],rgb[2])
	var color2 = color.to_html(false)
	var color3 = Color(color2)
	print(color3)
	$"Player/Body".modulate = color
	$"Player/mask".modulate = color
	$"Player/Baloon".modulate = color
	$"LineEdit".modulate = color
	$"Player/Label".modulate = color
	user["color"] = "#"+color2
	user["rgb"] = rgb

func _on_VSlider_value_changed(value):
	rgb[0] = value
	modulate()

func _on_VSliderG_value_changed(value):
	rgb[1] = value
	modulate()
	

func _on_VSliderB_value_changed(value):
	rgb[2] = value
	modulate()

func _on_LineEdit_text_changed(new_text):
	$"Player/Label".bbcode_text = "[center]"+$"LineEdit".text+"[/center]"
	pass # Replace with function body.


func _on_RichTextLabel_meta_clicked(meta):
	$"LineEdit".text = meta
	$"Player".append_emoji(user_list[meta]["emoji"])
	$"Player".get_node("Label").bbcode_text =  "[center]"+meta+"[/center]"
	rgb = user_list[meta]["rgb"]
	modulate()
	pass # Replace with function body.
