extends Node

const ai_version = "154"
const ai_date = "2021-06-20"
const about = "My version is"+ ai_version+" from " +ai_date+" please check for updates at [url=http://diegoferraribruno.itch.io/angelica]my web page[/url] \nIf you wanna chat a bit say: [b]hello[/b]"

onready var memory = get_node("Memory")
onready var avatar = get_node("../Mini/Avatar")
onready var chatmini = get_node("../Mini/ChatMini")
onready var chat = get_node("../Mini")
#onready var heart = get_node("../Editor/TextEdit")
#onready var editor = get_node("../Editor")
onready var Cbar = get_node("../../CommandBar")
onready var game = get_node("../../Game")
onready var load_save = $"LoadSave"
var dock = preload("res://addons/angelica/Dock/Dock.tscn")
onready var title = get_node("../../Paint/Title/Title")
#var state = "show"
#var state_old = "show"
const FILE_NAME = "user://angelica-data.json"
var ai_name = "Angelica"
var ai_color = "#ffbbdd"
var need = ""

onready var good = $"Memory/Emotional".good
onready var bad =  $"Memory/Emotional".bad
onready var needs = $"Memory/Necessities".needs
onready var notfeeling = $"Memory/NotFeelings".notfeeling
onready var help = $"Memory/Help".help
onready var sentences = $"Memory/Sentences".sentences
onready var greetings = $"Memory/Greetings".greetings
onready var audio = $"Audio"
onready var hashtags = $"Memory/UserDefault".hashtags
onready var links = $"Memory/UserDefault".links
onready var notes = $"Memory/UserDefault".notes

#var initialize = ["pause","volume","volume","volume","about","list notes","track ./Angelica/Angelica/Trackers position","track fps","track Player1 position","track Player1 status","track Timer time_left", "print Player1/Inventory tools","list links","pause"]
var initialize = [
#	"glow",
	"title [rainbow]Angelica Love version.[/rainbow]",
	"dock",
#	"xperma",
	"about",
	"Many features are temporary unavaiable and saving is NOT POSSIBLE at this momment! to hide or show things Press F1.",
	
	]
onready var ai_prefs = {
	ai_version:"152",
	ai_name:"Angelica", 
	ai_color:"#ddffbb",
	autohide:false,
	autoload:true,
	autosave:true,
	quietstart:false,
	rsiblink:true,
	autopause:true,
	sound:0,
	last_window_pos:"(0,0)",
	}
onready var user = {
	"id":0001, 
	"name":"Me", 
	"sillyword":"secretemoji",
	"color":"#dfbdfbff",
	"hashtags":"",
	"links":"",
	"ai_prefs":ai_prefs, 
	"initialize":initialize,
	}

var rsiblink = [[true,true],[3000,600]]
var satisfied = 0
var text = ""
var have_feelings = []
var have_need = []
var inputs = 0
var new_face = "1f646"
var sleep = true
var history =["enter text here"]
var autohide = false
var autoload = false
var autosave = true
var quietstart = false
var quiet = false
onready var addonmode = false
var autopause = true
onready var printparent = "get_parent()"

var sound = [[true,0],["Alerts/Alarm"]] #space reserved for adding game audiolayers
#var sound = true
var last_window_pos
var userbkp = user
var paint = preload("res://addons/angelica/GDPaint/PaintTools.tscn")
var pong = preload("res://addons/angelica/Games/Pong/pong.tscn")
var truck = preload("res://addons/angelica/Games/trucktown/car_select.tscn")
var love = preload("res://src/maps/Love.tscn")
var xperma = preload("res://src/maps/Xperma.tscn")
var glow = preload("res://addons/angelica/WorldEnviroments/Glow.tscn")
var studio = preload("res://addons/angelica/Studio/Studio.tscn")
#var chat = preload("res://addons/angelica/Chat/Chat.tscn")
var editor = preload("res://addons/angelica/Editor/Editor.tscn")
var dj = preload("res://addons/angelica/DJ/DJ.tscn")
onready var screenSize = get_viewport().get_visible_rect().size

func text_entered(argument):
	synapse(argument)
func initialize():
	for i in user["initialize"]:
		synapse(i)
		yield(get_tree().create_timer(1), "timeout")

func _ready():
	if addonmode == true:
#		if OS.get_name() != "HTML5":
		OS.set_window_maximized(true)
#		OS.set_window_always_on_top(false)
#		var some_vector = str2var("Vector2" + ai_prefs[11])
#		position = some_vector
		$Control.panel_position()
#		ai_say(str(ai_prefs[11]))
	else:
#		position = Vector2(0,0)
		OS.set_window_maximized(false)
##		OS.set_window_always_on_top(true)
#		last_window_pos = str2var("Vector2" + ai_prefs[10])
#		OS.set_window_position(last_window_pos)
#		position = Vector2(0,0)
	if quietstart == false:
		initialize()
	userbkp = user

func face_change(image):
	avatar.face_change(image)

func math(text) -> void:
	if text.count("+") or text.count("-") or text.count("*") or text.count("/"):
		if text != null and text.count("[") == 0:
			text.replace(",",".")
			var text_to_float = "1.0*"+str(text)
			var expression = Expression.new()
			expression.parse(text_to_float)
			var result = expression.execute()
			if result != null:
				ai_say(str(text," = ",result))
func screen_shot(selfie):
				if selfie == false:
					get_node("../").visible = false
					get_node("../../CommandBar").visible = false
				yield(get_tree(), "idle_frame")
				yield(get_tree(), "idle_frame")
				var image = get_viewport().get_texture().get_data()
				image.flip_y()
				image.save_png("user://screenshots/ssAngelica"+datetime_to_string(OS.get_date())+"-"+datetime_to_string(OS.get_time())+".png")
				text = "File saved to" +str(OS.get_user_data_dir())
				if selfie == false:
					get_node("../").visible = true
					get_node("../../CommandBar").visible = true
				ai_say(text)

	
func synapse(new_text)-> void :
	history.push_front(new_text)
	command_n = 0
	var command 
	if new_text is String:
		command = new_text.split(" ", true, 4)
	match command[0].to_lower():
		"demo":
			$Demo.demo()
		"ss":
			screen_shot(false)
		"ps":
			var arg = [""]
			var args = PoolStringArray(arg)
			OS.execute("gnome-screenshot", args, false)
		"ps5":
			var arg = ["-d -5"]
			var args = PoolStringArray(arg)
			OS.execute("gnome-screenshot", args, false) 
		"selfie":
			screen_shot(true)
			yield(get_tree().create_timer(0.2), "timeout")
		"pong":
			if game.has_node("Pong") == false:
				var instance = pong.instance()
#				$"../".visible = false
				game.add_child(instance)
			elif game.has_node("Pong"):
				get_node("../../Game/Pong").queue_free()
#				$"../".visible = true
				ai_say("Good game!")
		"truck":
			var instance = truck.instance()
			if game.has_node("CarSelect") == false:
#				$"../".visible = false
				game.add_child(instance)
			elif game.has_node("CarSelect"):
				if game.has_node("TownScene"):
					get_node("../../Game/TownScene").queue_free()
				get_node("../../Game/CarSelect").queue_free()
#				$"../".visible = true
				ai_say("Good game!")
		"love":
			var instance = love.instance()
			if game.has_node("Love") == false:
#				$"../".visible = false
				game.add_child(instance)
			elif game.has_node("Love"):
				get_node("../../Game/Love").queue_free()
#				$"../".visible = true
				ai_say("Good game!")
		"xperma":
			if game.has_node("XpermaWorld") == false:
				var instance = xperma.instance()
				game.add_child(instance)
			elif game.has_node("XpermaWorld"):
				get_node("../../Game/XpermaWorld").queue_free()
				ai_say("Good game!")
		"glow":
			if get_node("../../Paint").has_node("Glow") == false:
				var instance = glow.instance()
				get_node("../../Paint").add_child(instance)
				ai_say("Shinny!")
			else:
				get_node("../../Paint/Glow").queue_free()
				ai_say("Glow removed!")
#				get_node("../../").get_tree().get_root().set_transparent_background(true)
		"title":
			if command.size() == 1 :
				title.get_parent().visible = !title.get_parent().visible
			else:
				new_text = new_text.replace("title ","")
				title.bbcode_text = new_text
				title.get_parent().visible = true
		"paint":
			var instance = paint.instance()
			if get_parent().has_node("PaintTools") == false:
				$"../".visible = true
				get_parent().add_child(instance)
			elif get_parent().has_node("PaintTools"):
				get_node("../PaintTools").visible =  !get_node("../PaintTools").visible 
		"studio":
			var instance = studio.instance()
			if get_parent().has_node("Studio") == false:
				$"../".visible = true
				get_parent().add_child(instance)
			elif get_parent().has_node("Studio"):
				get_node("../Studio").visible = !get_node("../Studio").visible
		"dj":
			var instance = dj.instance()
			if get_parent().has_node("DJ") == false:
				$"../".visible = true
				get_parent().add_child(instance)
			elif get_parent().has_node("DJ"):
				if get_parent().get_node("DJ").visible == false:
					get_parent().get_node("DJ").visible = true
				else: 
					get_node("../DJ").queue_free()
					ai_say("DJ Closed!")
			
	if command.size() > 1:
		var ai_name_b = ai_name.to_lower()
		match command[0].to_lower():
			"track":
				$"../Trackers".track(command)
				$"../Trackers".visible = true
			"timer":
					$"../Trackers".track(command)
			"name":
				if command[1] != null:
					user[1] = command[1]
				else:
					pass
			"color":
				if command[1] != null:
					user[3] = command[1]
			"link":
				var key = str(command[1])
				var x = 0
				for i in links[0]:
					if i == key:
						OS.shell_open(links[1][x])
						ai_say(str("Opening " +str(command[0] +" at "+str(links[1][x]))))
						$Mini/Timer.start()
					x += 1
			"tw":
				tweet(command,new_text)
			"mail":
				send_mail(command[1],command[2],new_text)
			"gg":
				var searchstring = new_text.split(" ", true)
				searchstring.remove(0)
				var search =""
				for i in searchstring:
					search += i+"+"
				OS.shell_open("https://www.google.com/search?q="+search)
			"gd":
				var searchstring = new_text.split(" ", true)
				searchstring.remove(0)
				var search =""
				for i in searchstring:
					search += i+"+"
				OS.shell_open("https://www.google.com/search?q=GDScript+"+search)
			"dg":
				var searchstring = new_text.split(" ", true)
				searchstring.remove(0)
				var search =""
				for i in searchstring:
					search += i+"+"
				OS.shell_open("https://duckduckgo.com/?t=lm&q="+search)

	append_text(str("[color="+user["color"]+"][right][b]"+user["name"]+":[/b] - "+str(new_text)+"[/right][/color]\n"))
	match command[0]:
				"color":
					if command.size() == 1:
						text = "These are some of my favourite colors:\n[b]"
						for i in memory.sentences["colors"]:
							text += "[color="+i+"]"+i+" [/color]"
						ai_say(text+"[/b]")
					else:
						ai_say(str("[color="+str(command[1])+"]"+str(command[1])+" is a great color![/color]"))
				"rsi":
					if command.size() == 1:
						var rsi = rsiblink[0][0] 
						rsiblink[0][0] = !rsi
						if rsiblink[0][0] == false:
							$RSI.stop()
							ai_say("RSI set to " + str(rsiblink[0][0])+ " to turn it on again type [b]rsi[/b]")
						else:
							$RSI.start()
							ai_say("RSI set to " + str(rsiblink[1][0]) + ". to turn it off type [b]rsi[/b]")
					elif command.size() == 2:
						var seconds = int(command[1])*60
						rsiblink[1][0] = int(seconds)
						$RSI.wait_time = rsiblink[1][0]
						if rsiblink[0][0] == true:
							$RSI.start()
						ai_say("RSI timer interval set to "+ str(command[1]) +" minutes")
				"blink":
					if command.size() == 1:
						var blink = rsiblink[0][1] 
						rsiblink[0][1] = !blink
						if rsiblink[0][1] == false:
							$Blink.stop()
							ai_say("blink timer is off now. Type [b]blink[/b] to turn it on again")
						else:
							$Blink.start()
							ai_say("Blink timer is set to " + str(rsiblink[1][1]) + " minutes")
					elif command.size() == 2:
						var seconds = int(command[1])*60
						rsiblink[1][1] = int(seconds)
						$Blink.wait_time = int(seconds)
						if rsiblink[0][1] == true:
							$Blink.start()
						ai_say("Blink timer interval set to "+ str(command[1])+ " minutes.")
	if command.size() == 1 :
			math(command[0])
			match command[0]:
#				"sound":
#					audio.sound_change()
				"volume":
					audio.volume_change()
				"reset":
					get_tree().reload_current_scene()
				"init":
					initialize()
				"folder":
					ai_say("opening folder: "+str(OS.get_user_data_dir()))
					OS.shell_open(OS.get_user_data_dir())
				"autopause":
					autopause = !autopause 
					ai_say("auto pause is set to "+ str(autopause))
				"pause":
					get_tree().paused = !get_tree().paused
					ai_say("Game pause is "+ str(get_tree().paused))
				"editor":
					calleditor("note","new")
#					if get_node("HeadPanel").has_node():
						
	if command.size() > 1:
		match command[0].to_lower():
			"edit":
				if command.size() > 2:
					calleditor(command[1],command[2])
			"print":
				if command.size() ==3:
					var parent = $"./../../"
					if parent.has_node(command[1]):
						printparent = "./../../"+command[1]
						var myparentvar = get_node(printparent).get(command[2]) 
						ai_say(str(myparentvar))
				if command.size() == 2:
#					printparent = "./../../Angelica/Body"
#					var myparentvar = get_node(printparent).get(command[1])
					ai_say("sorry, i need more information, like: print Player Position")
			"calc":
				math(command[1])
			"list":
				if chat.visible == false:
					chat.visible = true 
				match command[1]:
					"init":
						var x = 0
						for i in initialize[1]:
							text += "- "+initialize[1][x]+""
							x += 1
						ai_say("This are your initialization commands:"+ text+ "\n to remove something: [b]del init[/b] something")
						text =""
					"notes":
#						ai_say("here is a list of your notes:\n"+str(user[7][0]))
						var x = 0
						for i in notes:
							text += "[url=edit note "+i+"][img]res://addons/angelica/images/16/1f4d4.png[/img]"+i+"[/url] "
							x += 1
						text = "here are your notes: "+text
						ai_say(text)
						text =""
					"links":
						var x = 0
						for i in links:
							text += "[url="+links[i]+"][img]res://addons/angelica/images/16/1f30e.png[/img]"+i+"[/url] "
							x += 1
						ai_say(text)
						text =""
					"good": 
						list(good)
						append_text(str("\n"))
						new_face ="1f481"
						face_change(new_face)
						sleep = false
					"bad":
						new_face ="1f64d"
						face_change(new_face) 
						list(bad)
						append_text(str("\n"))
						sleep = false
					"feelings":
						new_face = "1f481"
						face_change(new_face) 
						list(good)
						append_text(str("\n"))
						list(bad)
						append_text(str("\n"))
					"#":
						var hashtags = user[4]["hashtags"]
						for i in hashtags:
							append_text(str(i+" "))
					"needs":
						new_face ="1f481"
						face_change(new_face) 
						ai_say(str("This is a list of NEEDS that might be useful to you:"))
						list(needs)
						append_text(str("\n"))
			"app":
#				$Mini/Timer.start()
				match command[1]:
					_:
						var commando = new_text.replace("app ","")
						OS.execute(str(commando),[], false)
						ai_say("trying to run %s" % command[1])	
			"obs":
#				$Mini/Timer.start()
				command.remove(0)
#				var array = ["--startrecording"]
#				var args = PoolStringArray(command)
#						OS.execute("C:\\Windows\\System32\\notepad.exe", args, true)
				var commando = "obs"
				OS.execute(str(commando), command, false)
				ai_say("Opening [b]OBS Studio[/b]")
				match command[0]:
					"--startrecording":
						ai_say("Starting [b]OBS Studio [color=red]RECORDING.[/color][/b] Do not forget to Stop it manually!")
					_:
						ai_say("trying to run OBS Studio" )
			"copy":
				match command[1]:
					"note":
							var key = str(command[2])
							var x = 0
							for i in notes[0]:
								if i == key:
									OS.clipboard = notes[1][x]
									ai_say("Text copied to clipboard: " + notes[1][x])
									auto_save()
									break
								x += 1
					"@":
							var key = str(command[2])
							var x = 0
							for i in links[0]:
								if i == key:
									OS.clipboard = links[1][x]
									ai_say("Your Link to: [b]" + links[1][x] +"[/b] is ready to Ctrl+V.")
									auto_save()
									break
								x += 1
			"del":
				if command.size() == 2:
					ai_say("What do you want to delete? try: del "+command[1]+" name")
				else:
					match command[1]:
						"init":
							new_text = new_text.replace("del init ","")
							new_text = new_text.replace("init","")
							var init_str = str(new_text)
							var i = initialize[1].find(init_str)
							initialize[1].remove(i)
							user[8] = initialize
							text = "init "+init_str+" removed.'"
							auto_save()
						"#":
							var i = hashtags["hashtags"].find(str(command[1],command[2]))
							hashtags["hashtags"].remove(i)
							text = "Hashtag #"+str(command[2])+" removed."
							auto_save()
						"link":
							var key = str(command[2])
							var x = 0
							for i in links[0]:
								if i == key:
									links[0].remove(x)
									links[1].remove(x)
									text = "link "+i+" removed."
									auto_save()
									break
								x += 1
								
						"note":
							var key = str(command[2])
							var x = 0
							for i in notes[0]:
								if i == key:
									notes[0].remove(x)
									notes[1].remove(x)
									ai_say("note "+i+" removed.")
									auto_save()
									break
								x += 1
							
	if command.size() > 2:
			match command[0].to_lower():
				"add":
					match command[1]:
						"init":
							var init_str = new_text.replace("add init ","")
							initialize[1].append(init_str)
							user[8] = initialize
							text = "Added Initialize command: "+init_str+" to list."
							auto_save()
							
						"#":
							user[4]["hashtags"].append(str(command[1],command[2]))
							text = "Added hashtag:"+command[1]+command[2] + " to # list."
							auto_save()
						"link":
							if command.size() > 3:
								links[command[2]] = command[3]
								text = "Added link: "+command[2]+" to "+ command[3] + " to list."
								auto_save()
						"note":
							new_text = new_text.replace("add note ","")
							user[7][0].append(str(command[2]))
							user[7][1].append(str(new_text))
							if command.size() < 4:
								calleditor("note",command[2])
							text = "Added note [b]"+ command[2] +":[/b] "+ new_text
							auto_save()
							
				"rename":
					if command.size() > 3:
						match command[1]:
							"note":
								rename_note(command[1],command[2],command[3])
							"link":
								rename_note(command[1],command[2],command[3])
					else:
						ai_say("Please try: rename note old_name new_name")
	match command[0].to_lower():
			"links":
				synapse("list links")
			"help":
				if command.size() > 1:
					if str(command[1]) in help:
						ai_say(str(help[command[1]]))
#						print (help[command[1]].size())
#							ai_say(str(help[command[2]]))
				else:
					new_face ="1f937"
					face_change(new_face)
					for i in help:
						append_text(str("[url="+i+"][b]"+i+"[/b][/url]: "+help[i][0]+" \n"))
						yield(get_tree().create_timer(0.2), "timeout")
			"save":
				
				load_save.save_prefs()
				ai_say("preferences saved")
				ai_say(" auto save is set to "+ str(autosave))
			"about":
				ai_say(str("today is ", datetime_to_string(OS.get_date())+" according to this OS."+" "+about))
#				if command[1] == str(user[2]):
			"load":
				load_save.load_user_prefs()
			"autoload":
				autoload = !autoload
				ai_prefs[4] = autoload
				ai_say("autoload set to "+str(autoload))
			"autosave":
				autosave = !autosave
				ai_prefs[5] = autosave
				ai_say("autosave set to "+str(autosave))
			"quietstart":
				quietstart = !quietstart
				ai_prefs[7] = quietstart
				ai_say("quietstart set to "+str(quietstart))
				auto_save()
			"addon":
				$Control.addonmode = !$Control.addonmode
				ai_prefs[6] = $Control.addonmode
				ai_say("Addon mode set to "+str($Control.addonmode)+".\n Please save, close and reopen this app!")
				auto_save()
			"desktop":
				$Control.addonmode = false
				ai_prefs[6] = $Control.addonmode
				ai_say("Desktop mode On.\n Please save, and reopen this app!")
				auto_save()
			"user":
				ai_say(str(user))
			"notes":
						if chat.visible == false:
							chat.visible = true 
						text = ""
						var x = 0
						for i in notes:
							text += "[b]"+i+"[/b] "+notes[i]["bb"]+"\n"
							x += 1
						ai_say("Here are your notes:\n"+ text)
						text =""
			"ai_name":
				pass #ai_prefs[1] = command[1]+" "+command[2]
			"autohide":
				autohide = !autohide
				ai_prefs[3] = autohide
				ai_say(("autohide is "+str(autohide)))
	new_text = " " + new_text.to_lower() + " "
	new_text = new_text.replace(",", " ");
	new_text = new_text.replace(".", " ");
	new_text = new_text.replace("!", " ");
	Cbar.newcommand()
	inputs = 2
	if new_text == " print help ":
		for i in help:
			append_text(str(i+": "+help[i][0]+"\n"))

	if new_text == " dock ":
		if get_parent().has_node("Dock") == false:
			var instance = dock.instance()
			get_node("../").add_child(instance)
		else:
			get_node("../Dock").queue_free()
	if new_text == " command ":
		Cbar.visible = !Cbar.visible
		if Cbar.visible == true:
			Cbar.expand()
	if new_text == " chat mini ":
		chat.visible = !chat.visible 
	if new_text == " bye ":
		new_face = "1f64b"
		face_change(new_face)
		auto_save()
		ai_say(str("Bye! If you need me, reload the page or open the app again."))
		$Timer.start()
	if new_text == " clear ":
		chatmini.set_bbcode("")
		var paint_control = get_node("../../Paint/PaintControl")
		paint_control.brush_data_list = []
		paint_control.update()
#		interface.set_bbcode("")
#		heart.text = ""
#		heart.text = ""
	if new_text == " hashtags " or new_text == " # ":
		var clipboard = ""
#		var hashtags = user[4]["hashtags"]
		for i in hashtags["#"]:
			clipboard += " "+i
		OS.clipboard = clipboard
		append_text(clipboard+"\n")
		ai_say(str("Hashtags copied to clipboard!"))
	if new_text == " time ":
		ai_say("it's about " + str(datetime_to_string(OS.get_time()))+" according to this OS.")
	if new_text == " date " or new_text == " today ":
		ai_say(str("today is ", datetime_to_string(OS.get_date()))+" according to this OS.")
	if new_text == " good ":
		synapse("list good")
	if new_text == " bad ":
		synapse("list bad")
	if new_text == " sleep ":
		sleep = true
		new_face = "1f486"
		face_change(new_face)
	if new_text in greetings:
		new_face = "1f64b"
		face_change(new_face)
		ai_say(str(greetings[new_text]))
		sleep = false
	if new_text == " new ":
		sleep = false
#		interface.set_bbcode("")
		ai_say(str(sentences["welcome"]))
		new_face = "1f64e"
		face_change(new_face)
		ai_say(str(greetings[" hello "]))
		have_need = []
		have_feelings = []
		inputs = 0
		satisfied = 0
	if new_text == " needs ":
			new_face = "1f481"
			face_change(new_face) 
			ai_say(str("This is a list of NEEDS that might be useful to you:"))
			list(needs)
	if !sleep:
		for i in good:
			for x in good[i]:
				x = " "+ x + " "
				if new_text.find(x) != -1:
					have_feelings.append(x)
					new_face = "1f646"
					face_change(new_face)
					satisfied += 1
					ai_say(str("Uhu! You really look "+ i.to_lower()+ "!"))
					if !have_need:
						ai_say(str("We might feel this way when our needs are satisfied.\n Can you name one of your needs? (if you need a list type: needs)"))
					break
		for i in notfeeling:
			for f in notfeeling[i]:
				f =  " " + f + " "
				if new_text.find(f) != -1:
					new_face = "1f937"
					face_change(new_face)
					ai_say(str("Did you said: ", f.to_lower(), "? this is not a feeling.\n", sentences["notfeeling"]))
					break
		for i in bad:
			for y in bad[i]:
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
			for i in needs:
				for y in needs[i]:
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
		text = ""
		if inputs == 5 and !have_need and !have_feelings:
			sleep == true
		if sleep == false:
			if inputs == 4 and have_need and have_feelings:
				new_face ="1f937"
				face_change(new_face)
				face_change(new_face)
				ai_say(str("If you want to talk to someone, maybe you could tell them that you feel, ", str(have_feelings), "\n because of your need for ", str(have_need), " and than ask them to do (or stop doing) something concrete that would make your life more joyful!"))
			if inputs == 10:
				ai_say(str("Remember that our freedom of choice lies in the space/time between the input and the response."))
			if inputs == 12:
				ai_say(str("Ah, just one more thing: help the Open Source Community to improve the world!"))
			if inputs == 13:
				sleep = true
				inputs = 0

func auto_save():
	if autosave == true:
		text += " (auto saved)"
#		load_save.save_prefs()
	else:
		text += "Autosave is off so, don't forget to [b]save[/b]"
	ai_say(text)
	text=""

func list(what) -> void:
		for i in what:
			yield(get_tree().create_timer(0.6), "timeout")
			append_text(str(" -[b] ", i, " [/b]"))
			for x in what[i]:
				yield(get_tree().create_timer(0.02), "timeout")
				append_text(str(" - ",x))
	
func ai_say(text):
	text = "[color="+ ai_color+"][b]"+ai_name+":[/b][/color] "+str(text)+"\n"
#	interface.append_bbcode(text)
#	heart.insert_text_at_cursor(text)
	chatmini.append_bbcode(text)
	
func append_text(text):
	var history = $"Memory/History"
	history.commands.push_front(text)
	chatmini.append_bbcode(text)
	
func _on_Timer_timeout():
		get_tree().quit()
		
func _on_SendButton_button_up():
	var new_text = get_node("Cbar").get_text()
	synapse(new_text)
	
#func _on_SendButton2_button_up():
#	var sendtext = heart.text
#	interface.set_bbcode(sendtext)
#	get_node("../Editor/Label").text = "chat updated"
#
func add_hashtags():
	var hashtags = user[4]["hashtags"]
	for i in hashtags:
		append_text(str(i+" "))
func tweet(command, new_text):
	var openfile = false
	var tw_text = new_text.replace("tw ","")
	if command[1] == "ss":
		tw_text = tw_text.replace("ss ","")
		openfile = true
	if command[1] == "@":
		tw_text = tw_text.replace("@ ","")
		tw_text = tw_text.replace(str(command[2]),"")
		var key = str(command[2])
		print (key)
		var x = 0
		for i in links[0]:
			if i == key:
				tw_text += " "+links[1][x]+" "
				print (tw_text)
				break
			x += 1
	if command[1] == "note":
		tw_text = tw_text.replace("note ","")
		tw_text = tw_text.replace(str(command[2]),"")
		var key = str(command[2])
		for i in notes:
			if i == key:
				tw_text += " "+notes[i]["bb"]+" "
	var hashtags_text=""
	if tw_text.find("# ") != -1:
		tw_text = tw_text.replace("# ","")
#						var hashtags = user[4]["hashtags"]
		for i in hashtags["#"]:
			hashtags_text = hashtags_text +i+"%20"
	new_text = new_text.replace("tw ", "Tweet ")
	new_text = new_text +":\n "+ tw_text + hashtags_text
	new_text = new_text.replace("%20", " ")
	tw_text = "https://twitter.com/intent/tweet?hashtags="+hashtags_text+"&text="+tw_text
	tw_text = tw_text.replace(" ","%20")
	tw_text = tw_text.replace("#","%2c")
	tw_text = tw_text.replace("=%2c","=")
	OS.shell_open(tw_text)
	if openfile == true:
		OS.shell_open(OS.get_user_data_dir())
					
func _on_Print_meta_clicked(meta):
#	$AudioStreamPlayer.play()
	$Brain/TimerMini.start()
	OS.shell_open(meta)
	
func datetime_to_string(date):
	if (
		date.has("year")
		and date.has("month")
		and date.has("day")
		and date.has("hour")
		and date.has("minute")
		and date.has("second")
	):
		# Date and time.
		return "{year}-{month}-{day} {hour}:{minute}:{second}".format({
			year = str(date.year).pad_zeros(2),
			month = str(date.month).pad_zeros(2),
			day = str(date.day).pad_zeros(2),
			hour = str(date.hour).pad_zeros(2),
			minute = str(date.minute).pad_zeros(2),
			second = str(date.second).pad_zeros(2),
		})
	elif date.has("year") and date.has("month") and date.has("day"):
		# Date only.
		return "{year}-{month}-{day}".format({
			year = str(date.year).pad_zeros(2),
			month = str(date.month).pad_zeros(2),
			day = str(date.day).pad_zeros(2),
		})
	else:
		# Time only.
		return "{hour}-{minute}-{second}".format({
			hour = str(date.hour).pad_zeros(2),
			minute = str(date.minute).pad_zeros(2),
			second = str(date.second).pad_zeros(2),
		})

func _on_LineEdit_focus_entered():
	Cbar.text = history[0]
	pass # Replace with function body.
var command_n = 0
func _on_LineEdit_gui_input(event):
	if Input.is_action_just_released("ui_up"):
		var history_max = history.size()-1
		print (command_n," de", history_max)
#		history.push_front(Cbar.text)
		if command_n < history_max:
				if history[command_n] != null:
					Cbar.text = history[command_n]
					command_n+=1

	if Input.is_action_just_released("ui_down") and command_n >= 1:
			command_n-=1
			Cbar.text = history[command_n]


func calleditor(what,witch):
	var instance = editor.instance()
	if get_parent().has_node("Editor") == false:
			$"../".visible = true
			get_parent().add_child(instance)
			get_parent().get_node("Editor").editor(what,witch)
	else:
		$"../".visible = true
		get_parent().get_node("Editor").visible = true
		get_parent().get_node("Editor").editor(what,witch)

func rename_note(what, witch, new_name) -> void:
	match what:
		"note":
			for i in notes[0].size():
				if notes[0][i] == witch:
					notes[0][i] = new_name
					ai_say(str(what)+" "+str(witch)+" changed to "+str(notes[0][i]))
					auto_save()
		"link":
			for i in links[0].size():
				if links[0][i] == witch:
					links[0][i] = new_name
					ai_say(str(what)+" "+str(witch)+" changed to "+str(links[0][i]))
					auto_save()

func send_mail(to, what, new_text):
	#		var emailaddress = "diegodesenha@gmail.com"
#		OS.shell_open("https://mail.google.com/mail/?view=cm&ui=2&tf=0&fs=1&to=diegodesenha%40gmail.com&su=Angelica+Response&body=Hi,1%0aFrom+Agelica+App+with+love")
	var openfolder = false
	var mail_text = new_text.replace("mail ","")
	match what:
		"ss":
			mail_text = mail_text.replace("ss ","")
			openfolder = true
		"@":
			mail_text = mail_text.replace("@ ","")
			mail_text = mail_text.replace(str(what),"")
			var key = str(what)
			var x = 0
			for i in links[0]:
				if i == key:
					mail_text += " "+links[1][x]+" "
					break
				x += 1
		"note":
			mail_text = mail_text.replace("note ","")
			mail_text = mail_text.replace((str(to)+" "),"")
	#			mail_text = mail_text.replace(str(what,""))
			if mail_text in notes:
				mail_text = notes[mail_text]["bb"]
				mail_text = mail_text.replace(" ","+")
	var hashtags_text=""
	if mail_text.find("#") != -1:
		mail_text = mail_text.replace("# ","")
		var hashtags = user[4]["hashtags"]
		for i in hashtags:
			hashtags_text = hashtags_text +i+" "
	mail_text = "https://mail.google.com/mail/?view=cm&ui=2&tf=0&fs=1&to="+to+"&su=Angelica+Response&body="+mail_text
	mail_text = mail_text.replace(" ","%20")
	mail_text = mail_text.replace("#","%2c")
	mail_text = mail_text.replace("=%2c","=")
	mail_text = mail_text.replace("@","%40")
	
	OS.shell_open(mail_text)
	if openfolder == true:
		OS.shell_open(OS.get_user_data_dir())

func _on_Blink_timeout():
	if !quiet:
		if autopause == true:
			get_tree().paused = true
	#	ai_say("Time to rest your eyes")
		new_face = "1f64b"
		face_change(new_face)
		$"../Alerts".visible = !$"../Alerts".visible
		$"../Alerts/Label".text = "Take 20 seconds to rest your eyes."
		if sound[0][0] == true:
			$"../Alerts/Alarm".play()
		$Brain/TimeOut.wait_time = 20
		$Brain/TimeOut.start()

func _on_RSI_timeout():
	if autopause == true:
		get_tree().paused = true
#	ai_say("Time to take a break")
	new_face = "1f64b"
	face_change(new_face)
	$"../Alerts".visible = !$"../Alerts".visible
	$"../Alerts/Label".text = "Time for 1 min rest (or yoga) \n To deactivate this type [b]rsi[/b]"
	$"../Alerts/Alarm".play()
	$Brain/TimeOut.wait_time = 60
	$Brain/TimeOut.start()

func _on_TimeOut_timeout():
	if autopause == true:
		get_tree().paused = false
		$"../Alerts".visible = false
		if sound[0][0] == true:
			$"../Alerts/Alarm".play()

func alert(text):
	$"../Alerts".alert(text)
