extends Node2D
var close = true
var title = "Chat"
var icon = "1f5e8"
var about = {
	"version":"190",
	"position":position,
	"fullscreen_pos":Vector2(),
	"windowed_pos":Vector2(),
	"supermenu_h":["minithis","close","\n"],
	"suppermenu_v":["clear","edit chat","copy all","list links","list notes"],
}

onready var user = get_parent().get_node("User").user
onready var ai_prefs = $User.ai_prefs

onready var nvc = $NVC.nvc
var have_feelings = []
var have_need = []
var inputs = 0
var new_face = "1f646"
var satisfied = 0
var sleep = false
var text = ""

func _ready():
	update_user_list()
	pass # Replace with function body.
func append_emoji(argument):
#	print ("append"+argument)
	$"LineEdit".text += "[img]res://img/16/"+argument+".png[/img]"
	$"EmojiPanel".visible = false

func ai_say(text):
	text = "[img]res://img/16/"+new_face+".png[/img] [color="+ ai_prefs["ai_color"]+"][b]"+ai_prefs["ai_name"]+":[/b][/color] "+str(text)+"\n"
	yield(get_tree().create_timer(0.4), "timeout")
	$"Interface".append_bbcode(text)

func user_say(argument):
	$"Interface".append_bbcode("[right][img]res://img/16/"+user["emoji"]+".png[/img] [color="+user["color"]+"][b]"+user["name"]+":[/b] "+argument+"[/color][/right]\n")
func _on_LineEdit_text_entered(new_text):
	user_say(new_text)
	new_text = " " + new_text.to_lower() + " "
	new_text = new_text.replace(",", " ");
	new_text = new_text.replace(".", " ");
	new_text = new_text.replace("!", " ");
	var good = nvc["good"]
		
	if new_text == " good ":
		synapse("list good")
	if new_text == " bad ":
		synapse("list bad")
	if new_text == " sleep ":
		sleep = true
		new_face = "1f486"
		face_change(new_face)
	if new_text in nvc["greetings"]:
		new_face = "1f64b"
		face_change(new_face)
		ai_say(str(nvc["greetings"][new_text]))
		sleep = false
	if new_text == " new ":
		sleep = false
#		interface.set_bbcode("")
		ai_say(str(nvc["sentences"]["welcome"]))
		new_face = "1f64e"
		face_change(new_face)
		ai_say(str(nvc["greetings"][" hello "]))
		have_need = []
		have_feelings = []
		inputs = 0
		satisfied = 0
	if new_text == " needs ":
			new_face = "1f481"
			face_change(new_face) 
			ai_say(str("This is a list of NEEDS that might be useful to you:"))
			list(nvc["needs"])
	if !sleep:
		for i in good:
#			print (i)
			for x in nvc["good"][i]:
				x = " "+ x + " "
				if new_text.find(x) != -1:
					have_feelings.append(i)
					new_face = "1f646"
					face_change(new_face)
					satisfied += 1
					ai_say(str("Uhu! You really look "+ i.to_lower()+ "!"))
					if !have_need:
						ai_say(str("We might feel this way when our needs are satisfied.\n Can you name one of your needs? (if you need a list type: needs)"))
					break
		for i in nvc["notfeeling"]:
				var f =  " " + i + " "
				if new_text.find(f) != -1:
					new_face = "1f937"
					face_change(new_face)
					ai_say(str("Did you said: ", f.to_lower(), "? this is not a feeling.\n", nvc["sentences"]["notfeeling"]))
					break
		for i in nvc["bad"]:
			for y in nvc["bad"][i]:
				y = " " + y + " "
				if new_text.find(y) != -1:
					have_feelings.append(y)
					new_face ="1f645"
					face_change(new_face)
					satisfied -= 1
					ai_say(str("Oh! You are ", i.to_lower(), " aren't you?!"))
					ai_say(str("We might feel this way when our needs are not satisfied.\nCan you identify one of your needs? (for a list of the needs, type: needs)"))
					break
					
		if have_feelings:
			for i in nvc["needs"]:
				for y in nvc["needs"][i]:
					y = " " + y + " "
					if new_text.find(y) != -1:
						if satisfied <= 0:
							have_need.append(y)
							new_face ="1f646"
							face_change(new_face)
							ai_say(str(i.to_lower(), ", hum?! I miss it too."))
							break
						if satisfied > 0:
							have_need.append(y)
							new_face ="1f646"
							face_change(new_face)
							ai_say(str(i.to_lower(), ", hum?! That is awesome!."))
							break
						if satisfied == 0:
							have_need.append(y)
							ai_say(str("I am sorry that I can't say: 'i know how does it feel'... \nI hope that you can find someone real to share your feelings and needs."))
							break
#		text = ""
		if inputs == 5 and !have_need and !have_feelings:
			sleep == true
		if sleep == false:
			if inputs == 4 and have_need and have_feelings:
				new_face ="1f937"
				face_change(new_face)
				ai_say(str("If you want to talk to someone, maybe you could tell them that you feel, ", str(have_feelings), "\n because of your need for ", str(have_need), " and than ask them to do (or stop doing) something concrete that would make your life more joyful!"))
			if inputs == 10:
				ai_say(str("Remember that our freedom of choice lies in the space/time between the input and the response."))
			if inputs == 12:
				ai_say(str("Ah, just one more thing: help the Open Source Community to improve the world!"))
			if inputs == 13:
				sleep = true
				inputs = 0
		$"LineEdit".text = ""
		
func synapse(new_text):
	var command = []
	if new_text is String:
		command = new_text.split(" ", true, 4)
		match command[0].to_lower():
			"list":
				match command[1].to_lower():
					"good": 
						list(nvc["good"])
						append_text(str("\n"))
						new_face ="1f481"
						face_change(new_face)
						sleep = false
					"bad":
						new_face ="1f64d"
						face_change(new_face) 
						list(nvc["bad"])
						append_text(str("\n"))
						sleep = false
					"feelings":
						new_face = "1f481"
						face_change(new_face) 
						list(nvc["good"])
						append_text(str("\n"))
						list(nvc["bad"])
						append_text(str("\n"))
						
func list(what) -> void:
		for i in what:
			yield(get_tree().create_timer(0.6), "timeout")
			append_text(str(" -[b] ", i, " [/b]"))
			for x in what[i]:
				yield(get_tree().create_timer(0.02), "timeout")
				append_text(str(" - ",x))

func update_user_list():
	$"UserList".bbcode_text = "[img]res://img/16/1f469.png[/img] Angelica\n[img]res://img/16/"+user["emoji"]+".png[/img] [color="+user["color"]+"]"+user["name"]+"[/color]"
	
	
func append_text(text):
#	var history = $"Memory/History"
#	history.commands.push_front(text)
	$"Interface".append_bbcode(text)
	
func face_change(new_face):
#		$AiAvatar.bbcode_text="[img]res://img/48/"+new_face+".png[/img]"
	pass
