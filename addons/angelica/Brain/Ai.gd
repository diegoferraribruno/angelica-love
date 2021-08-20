extends Node2D
const ai_version = "126"
const ai_date = "2021-05-24"

onready var memory = get_node("Brain/Memory")
onready var head = get_node("Chat")
onready var interface = get_node("Chat/Interface")
onready var chatmini = get_node("ChatMini")
onready var heart = get_node("Editor/TextEdit")
onready var editor = get_node("Editor")
onready var studio = get_node("Studio")
onready var Cbar = get_node("../DiegOsFloat")
#onready var avatar = get_node("Mini")
const about = "My version is"+ ai_version+" from " +ai_date+" please check for updates at [url=http://diegoferraribruno.itch.io/angelica]my web page[/url] \nIf you wanna chat a bit say: [b]hello[/b]"
const STATES = ["mini","hide","show","editor"]
var state = "show"
var state_old = "show"
var quiet = false
const FILE_NAME = "user://angelica-data.json"
var ai_name = "Angelica"
var ai_color = "#ffbbdd"
var need = ""
onready var good = memory.good
onready var bad = memory.bad
onready var needs = memory.needs
onready var notfeeling = memory.notfeeling
onready var help = memory.help
onready var sentences = memory.sentences
onready var hashtags = memory.hashtags
onready var greetings = memory.greetings
onready var links = memory.links
onready var notes = memory.notes
onready var ai_prefs = [ai_version, ai_name, ai_color, autohide, autoload, autosave, addonmode, quietstart, rsiblink, autopause,sound,"(0,0)","(0,0)",state_old]
onready var user = ["id", "Me", "sillyword", "#dfbdfbff", hashtags, links, ai_prefs, notes, initialize]
var rsiblink = [[true,true],[3000,600]]
var satisfied = 0
var text = ""
var have_feelings = []
var have_need = []
var inputs = 0
var new_face = "res://img/avatar/1f646.png"
var sleep = true
var history =["enter text here"]
var autohide = true
var autoload = false
var autosave = true
var olduser = ["id","Me","password","#dfbdfbff",notes,links]
var buser
var quietstart = true
onready var addonmode = $Control.addonmode
var autopause = true
onready var printparent = "get_parent()"
var initialize = [[true],["pause","volume","volume","volume","about","list notes","track ./Angelica/Angelica/Trackers position","track fps","track Player1 position","track Player1 status","track Timer time_left", "print Player1/Inventory tools","list links","pause"]]
var sound = [[true,0],["Pinky/Alarm"]] #space reserved for adding game audiolayers
#var sound = true
var last_window_pos
var userbkp = user
var pong = preload("res://addons/angelica/Pong/pong.tscn")
onready var screenSize = get_viewport().get_visible_rect().size

func text_entered(argument):
	_on_LineEdit_text_entered(argument)
#var lastposition = Vector2(user[6][11].x,user[6][11].y)
func inittialize():
	for i in user[8][1]:
		_on_LineEdit_text_entered(i)
		yield(get_tree().create_timer(1), "timeout")

func demo():
	get_node("Cbar/Label2").visible = true
	auto_save()
	userbkp = user
	autosave = false
	for i in dialogue:
		if i.find("ai_name ") != -1:
			i = i.replace("ai_name ","")
			ai_say(i)
			screen_shot(true)
			yield(get_tree().create_timer(1.2), "timeout")
		else: 
			get_node("Cbar/Label2").append_bbcode(i)
			yield(get_tree().create_timer(2), "timeout")
			get_node("Cbar/Label2").text = ""
			_on_LineEdit_text_entered(i)
			yield(get_tree().create_timer(1.2), "timeout")
		
	get_node("Cbar/Label2").visible = false
	user = userbkp
	autosave = true
	
func preload_saved():
	var file = File.new()
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_ARRAY:
			buser = data
			if buser.size() < user.size() or buser[6][0] != ai_version:
				ai_say("You might have a different version of this app and update may break things. I have set [b]autosave[/b] to [b]false[/b]. Try to [b]load[/b] your old prefs, then [b]list links[/b] and [b]#[/b] to check if everything is ok then save, try 'print user'")
				autosave = false
			else:
				if buser[6][0] == ai_version:
					autoload = buser[6][4]
					if autoload != false:
						load_user_prefs()
				if buser[6][4] == false:
					autosave = false
#					if buser[6][4]==:

func load_user_prefs():
	var file = File.new()
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_ARRAY:
			user = data
			hashtags = user[4]
			links = user[5]
			ai_name = user[6][1]
			ai_color = user[6][2]
			autohide = user[6][3]
			autoload = user[6][4]
			autosave = user[6][5]
			$Control.addonmode = user[6][6]
			quietstart = user[6][7]
			rsiblink = user[6][8]
			autopause = user[6][9]
			$Brain/Blink.wait_time = rsiblink[1][1]
			$Brain/Rest.wait_time = rsiblink[1][0]
			addonmode = user[6][6]
			sound = user[6][10]
			if sound is bool:
				ai_say("sound is "+str(sound))
				sound = [[true,0],[true,0]]
				ai_say("sound is "+str(sound))
			last_window_pos = user[6][12]
			notes = user[7]
			initialize = user[8]
#			lastposition = user[6][11]
			ai_say("OH! it is you [b][color="+user[3]+"]"+user[1]+"[/color][/b]?")
		else:
			printerr("No saved data! type 'save' to make a new file. \n Remember to aways save after making changes.")

func save_prefs():
	pass
#	var file = File.new()
#	user[6][0] = ai_version
#	file.open(FILE_NAME, File.WRITE)
#	file.store_string(to_json(user))
#	file.close()
#	print(OS.get_user_data_dir())
#
#func _process(delta):
#	if addonmode == false:
#		if !OS.is_window_focused() and autohide == true and state != "mini":
#			yield(get_tree().create_timer(0.2), "timeout")
#			change_state("mini")
###		if OS.is_window_focused() and autohide == true and state == "mini":
###			change_state(state_old)

func _ready():
	position.y = screenSize.y - 360
	position.x = screenSize.x/2-320
#	save_prefs() # it will reset user prefs in case of inconsistences
#	preload_saved()
	face_change(new_face)
#	Cbar.grab_focus()
	
#	if autohide == true:
#		change_state("hide")
	if $Control.addonmode == true:
#		if OS.get_name() != "HTML5":
		OS.set_window_maximized(true)
		OS.set_window_always_on_top(false)
		var some_vector = str2var("Vector2" + user[6][11])
#		position = some_vector
		$Control.panel_position()
#		ai_say(str(user[6][11]))
	else:
#		position = Vector2(0,0)
		OS.set_window_maximized(false)
		OS.set_window_always_on_top(true)
		last_window_pos = str2var("Vector2" + user[6][12])
		OS.set_window_position(last_window_pos)
#		position = Vector2(0,0)
	if quietstart == false:
		inittialize()
	userbkp = user

func change_state(state_new):
	if state != "mini": 
		state_old = state
#	match state_new:
#		"mini":
#			face_change("res://img/32/1f646.png")
#			$Body.visible = false
#			state = "mini"
#			if $Control.addonmode == false:
#				OS.set_window_mouse_passthrough($Mini/AuraMini.polygon)
#		"hide":
#			face_change("res://img/32/0000.png")
#			$Body.visible = true
#			if $Control.addonmode == false:
#				if heart.visible == true:
#					OS.set_window_mouse_passthrough($AuraFull.polygon)
#				else:
#					OS.set_window_mouse_passthrough($AuraMedium.polygon)
#			head.visible = false
#			chatmini.visible = true
#			state = "hide"
#			if heart.visible == true:
#				heart.grab_focus()
#			else:
#				Cbar.grab_focus()
#		"show":
#			$Body.visible = true
#			face_change("res://img/avatar/1f646.png")
#			if $Control.addonmode == false:
#				OS.set_window_mouse_passthrough($AuraFull.polygon)
#			head.visible = true
#			chatmini.visible = false
#			if heart.visible == true:
#				heart.grab_focus()
#			else:
#				$"LineEdit".grab_focus()
#			state = "show"
#	if $Control.addonmode == true:
#			OS.set_window_mouse_passthrough([])

func face_change(image):
#	avatar.face_change(image)
	pass
#func set_func(setA,setB):
#	var parent = $"../"
#	if parent.has_node(setA):
#		var parentb = get('$"../"'+setA)
#		set(parentb,setB)
##		var myparentvar = get_node(printparent).get(command[2])
#		ai_say(str(setA))
	
	
func math(text) -> void:
	if text.count("+") or text.count("-") or text.count("*") or text.count("/"):
		if text.count("http") == 0:
			text.replace(",",".")
			var text_to_float = "1.0*"+str(text)
			var expression = Expression.new()
			expression.parse(text_to_float)
			var result = expression.execute()
			if result != null:
				ai_say(str(text," = ",result))
func screen_shot(selfie):
				if selfie == false:
					self.visible = false
				yield(get_tree(), "idle_frame")
				yield(get_tree(), "idle_frame")
				var image = get_viewport().get_texture().get_data()
				image.flip_y()
				image.save_png("user://ssAngelica"+datetime_to_string(OS.get_date())+"-"+datetime_to_string(OS.get_time())+".png")
				text = "File saved to" +str(OS.get_user_data_dir())
				if selfie == false:
					self.visible = true
				ai_say(text)

	
func _on_LineEdit_text_entered(new_text)-> void :
	history.push_front(new_text)
	command_n = 0
	var command = new_text.split(" ", true, 4)
	match command[0].to_lower():
				"demo":
					demo()
				"ss":
					screen_shot(false)
				"selfie":
					screen_shot(true)
					yield(get_tree().create_timer(0.2), "timeout")
				"pong":
					var instance = pong.instance()
					if interface.visible == true:
						interface.visible = false
						editor.visible = false
#						add_child(pong,true)
						interface.text = ""
						get_node(".").add_child(instance)
						change_state("mini")
						$Body.visible = true
						if $Control.addonmode == false:
							OS.set_window_mouse_passthrough($AuraFull.polygon)
#							OS.set_window_mouse_passthrough([])
					else:
						interface.visible = true
						get_node("Pong").queue_free()
						ai_say("Good game!")
					
	if command.size() > 1:
		var ai_name_b = ai_name.to_lower()
		match command[0].to_lower():
				"track":
					$Trackers.track(command)
				"search":
					var words = new_text.replace("search ")
					if heart.visible == true:
						heart.search(words)
				ai_name_b:
					match command[1]:
						"name":
							ai_name = str(command[2])
							ai_prefs[1] = ai_name
							user[6] = ai_prefs
						"color":
							ai_color = str(command[2])
							ai_prefs[2] = ai_color
							user[6] = ai_prefs
							ai_say("UHU! New colours! \n I like RGB colors to like #dfb000")
						"learn":
							ai_say("I am not learning new sentences yet.")
				"timer":
						$Trackers.track(command)
				"name":
					if command[1] != null:
						user[1] = command[1]
					else:
						pass
				"color":
					if command[1] != null:
						user[3] = command[1]
			
#				"user":
#					if user[1] == command[1]:
#		future				print(user[1])
#		login 			if command[2] == user[2]:
#						print("sillyword ok")
#				"sillyword":
#					if user[1] == command[1]:
#						if user[2] == command[2]:
#							print("macth sillyword")
#							user[2] = command[3]
#							print("sillyword changed")
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
						print (key)
						var x = 0
						for i in notes[0]:
							if i == key:
								tw_text += " "+notes[1][x]+" "
								print (tw_text)
								break
							x += 1
					var hashtags_text=""
					if tw_text.find("#") != -1:
						tw_text = tw_text.replace("# ","")
						var hashtags = user[4]["hashtags"]
						for i in hashtags:
							hashtags_text = hashtags_text +i+" "
					new_text = new_text.replace("tw ", "Tweet this:\n")
					new_text = new_text+ " " + hashtags_text
					tw_text = "https://twitter.com/intent/tweet?hashtags="+hashtags_text+"&text="+tw_text
					tw_text = tw_text.replace(" ","%20")
					tw_text = tw_text.replace("#","%2c")
					tw_text = tw_text.replace("=%2c","=")
					OS.shell_open(tw_text)
					if openfile == true:
						OS.shell_open(OS.get_user_data_dir())
					
				"gg":
					var searchstring = new_text.split(" ", true)
					searchstring.remove(0)
					var search =""
					for i in searchstring:
						search += i+"+"
					OS.shell_open("https://www.google.com/search?q="+search)
				"mail":
					send_mail(command[1],command[2],new_text)
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

	append_text(str("[color="+user[3]+"][right][b]"+user[1]+":[/b] - "+str(new_text)+"[/right][/color]\n"))
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
				"studio":
					studio.visible = true
				"sound":
					sound_change()
				"volume":
					volume_change()
				"reset":
					get_tree().reload_current_scene()
				"init":
					inittialize()
				"folder":
					ai_say("opening folder: "+str(OS.get_user_data_dir()))
					OS.shell_open(OS.get_user_data_dir())
				"autopause":
					autopause = !autopause 
					ai_say("auto pause is set to "+ str(autopause))
				"pause":
					get_tree().paused = !get_tree().paused
					
					ai_say("Game pause is "+ str(get_tree().paused))
#					if get_node("HeadPanel").has_node():
						
	if command.size() > 1:
		match command[0].to_lower():
			"edit":
				
				if command[1] == "chat":
					get_node("Editor/TextEdit").text = get_node("Chat/Interface").bbcode_text
					editing = ["chat",false]
					editor._on_edit_note()
				if command[1] == "init":
					var inits = "" 
					for i in user[8][1]:
						inits += i
					get_node("Editor/TextEdit").text = str(user[8][1])
					editor(command[1],false)
					editor._on_edit_note()
				if command[1] == "menu":
					get_node("Editor/TextEdit").text = get_node("Dock/Menu").bbcode_text
					editing = ["menu",""]
					editor._on_edit_note()
				if command.size() == 2 and command[1] == "note":
					ai_say("Here is a list of your notes:\n"+ str(user[7][0])+"\n Please type: edit note name")
				elif command.size() > 2:
					editor(command[1], command[2])
					editor._on_edit_note()
#				heart.visible = true
#				heart.set_text("")
#				editing = get(command[1])
#				heart.insert_text_at_cursor(str(editing))
				
			"print":
				if command.size() ==3:
					var parent = $"./../../"
					if parent.has_node(command[1]):
						printparent = "./../../"+command[1]
						var myparentvar = get_node(printparent).get(command[2]) 
						ai_say(str(myparentvar))
				if command.size() == 2:
					printparent = "./../../Angelica/Angelica"
					var myparentvar = get_node(printparent).get(command[1]) 
					ai_say(str(myparentvar))
#			"set":
##				set_func(command[1],command[2])
#				var parent = $"../"
#				if parent.has_node(command[1]):
#					printparent = "../"+command[1]
#					var myparentvar = get_node(printparent).get(command[2])
#					set(str(myparentvar), command[3])
#					ai_say(str(myparentvar))
			"calc":
				math(command[1])
			"list":
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
						for i in notes[0]:
							text += "[url=edit note "+notes[0][x]+"][img]res://img/16/1f4d4.png[/img]"+notes[0][x]+"[/url] "
							x += 1
						text = "here are your notes: "+text
						ai_say(text)
						text =""
					"links":
						var x = 0
						for i in links[0]:
							text += "[url="+links[1][x]+"][img]res://img/16/1f30e.png[/img]"+links[0][x]+"[/url] "
							x += 1
						ai_say(text)
						text =""
					"good": 
						list(good)
						append_text(str("\n"))
						new_face ="res://img/avatar/1f481.png"
						face_change(new_face)
						sleep = false
					"bad":
						new_face ="res://img/avatar/1f64d.png"
						face_change(new_face) 
						list(bad)
						append_text(str("\n"))
						sleep = false
					"feelings":
						new_face = "res://img/avatar/1f481.png"
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
						new_face ="res://img/avatar/1f481.png"
						face_change(new_face) 
						ai_say(str("This is a list of NEEDS that might be useful to you:"))
						list(needs)
						append_text(str("\n"))
			"app":
				$Mini/Timer.start()
				match command[1]:
					_:
						var commando = new_text.replace("app ","")
						OS.execute(str(commando),[], false)
						ai_say("trying to run %s" % command[1])	
			"obs":
				$Mini/Timer.start()
				command.remove(0)
#				var array = ["--startrecording"]
#				var args = PoolStringArray(command)
#						OS.execute("C:\\Windows\\System32\\notepad.exe", args, true)
				var commando = "obs"
				OS.execute(str(commando), command, false)
				ai_say("Starting [b]OBS Studio [color=red]RECORDING.[/color][/b] Do not forget to Stop it manually!")
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
								links[0].append(command[2])
								links[1].append(command[3])
								user[4]["links"] = links
								text = "Added link: "+command[2]+" to "+ command[3] + " to list."
								auto_save()
						"note":
							new_text = new_text.replace("add note ","")
							user[7][0].append(str(command[2]))
							user[7][1].append(str(new_text))
							if command.size() < 4:
								editor("note",command[2])
								editor._on_edit_note()
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
				_on_LineEdit_text_entered("list links")
				
			"hide":
				_on_LinkHide_button_up()
			"show":
				change_state("show")
			"mini":
				change_state("mini")
			"help":
				if command.size() > 1:
					if str(command[1]) in help:
						ai_say(str(help[command[1]]))
#						print (help[command[1]].size())
#							ai_say(str(help[command[2]]))
				else:
					new_face ="res://img/avatar/1f937.png"
					face_change(new_face)
					for i in help:
						append_text(str("[url="+i+"][b]"+i+"[/b][/url]: "+help[i][0]+" \n"))
						yield(get_tree().create_timer(0.2), "timeout")
			"save":
				_on_save_button_up()
				save_prefs()
				ai_say("preferences saved")
				ai_say(" auto save is set to "+ str(autosave))
			"about":
				ai_say(str("today is ", datetime_to_string(OS.get_date())+" according to this OS."+" "+about))
#				if command[1] == str(user[2]):
			"load":
				load_user_prefs()
			"autoload":
				autoload = !autoload
				user[6][4] = autoload
				ai_say("autoload set to "+str(autoload))
			"autosave":
				autosave = !autosave
				user[6][5] = autosave
				ai_say("autosave set to "+str(autosave))
			"quietstart":
				quietstart = !quietstart
				user[6][7] = quietstart
				ai_say("quietstart set to "+str(quietstart))
				auto_save()
			"addon":
				$Control.addonmode = !$Control.addonmode
				user[6][6] = $Control.addonmode
				ai_say("Addon mode set to "+str($Control.addonmode)+".\n Please save, close and reopen this app!")
				auto_save()
			"desktop":
				$Control.addonmode = false
				user[6][6] = $Control.addonmode
				ai_say("Desktop mode On.\n Please save, and reopen this app!")
				auto_save()
			"user":
				ai_say(str(user))
			"notes":
						text = ""
						var x = 0
						for i in notes[0]:
							text += "[b]"+notes[0][x]+"[/b] "+ notes[1][x]+"\n"
							x += 1
						ai_say("Here are your notes:\n"+ text)
						text =""
			"ai_name":
				pass #user[6][1] = command[1]+" "+command[2]
			"autohide":
				autohide = !autohide
				user[6][3] = autohide
				ai_say(("autohide is "+str(autohide)))
	new_text = " " + new_text.to_lower() + " "
	new_text = new_text.replace(",", " ");
	new_text = new_text.replace(".", " ");
	new_text = new_text.replace("!", " ");
	Cbar.newcommand()
	inputs += 1
	if new_text == " print help ":
		for i in help:
			append_text(str(i+": "+help[i][0]+"\n"))
	if new_text == " editor ":
		editor._on_EditorButton_button_up()
	if new_text == " bye ":
		new_face = "res://img/avatar/1f64b.png"
		face_change(new_face)
		auto_save()
		ai_say(str("Bye! If you need me, reload the page or open the app again."))
		$Brain/Timer.start()
	if new_text == " clear ":
		chatmini.set_bbcode("")
		interface.set_bbcode("")
		heart.text = ""
		heart.text = ""
	if new_text == " hashtags " or new_text == " # ":
		var clipboard = ""
		var hashtags = user[4]["hashtags"]
		for i in hashtags:
			clipboard += " "+i
			append_text(str(i+" "))
		OS.clipboard = clipboard
		append_text("\n")
		ai_say(str("Hashtags copied to clipboard!"))
	if new_text == " time ":
		ai_say("it's about " + str(datetime_to_string(OS.get_time()))+" according to this OS.")
	if new_text == " date " or new_text == " today ":
		ai_say(str("today is ", datetime_to_string(OS.get_date()))+" according to this OS.")
	if new_text == " good ":
		_on_LineEdit_text_entered("list good")
	if new_text == " bad ":
		_on_LineEdit_text_entered("list bad")
	if new_text == " sleep ":
		sleep = true
		new_face = "res://img/avatar/1f486.png"
		face_change(new_face)
	if new_text in greetings:
		new_face = "res://img/avatar/1f64b.png"
		face_change(new_face)
		ai_say(str(greetings[new_text]))
		sleep = false
	if new_text == " new ":
		sleep = false
		interface.set_bbcode("")
		ai_say(str(sentences["welcome"]))
		new_face = "res://img/avatar/1f64e.png"
		face_change(new_face)
		ai_say(str(greetings[" hello "]))
		have_need = []
		have_feelings = []
		inputs = 0
		satisfied = 0
	if new_text == " needs ":
			new_face = "res://img/avatar/1f481.png"
			face_change(new_face) 
			ai_say(str("This is a list of NEEDS that might be useful to you:"))
			list(needs)
	if !sleep:
		for i in good:
			for x in good[i]:
				x = " "+ x + " "
				if new_text.find(x) != -1:
					have_feelings.append(x)
					new_face = "res://img/avatar/1f646.png"
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
					new_face = "res://img/avatar/1f937.png"
					face_change(new_face)
					ai_say(str("Did you said: ", f.to_lower(), "? this is not a feeling.\n", sentences["notfeeling"]))
					break
		for i in bad:
			for y in bad[i]:
				y = " " + y + " "
				if new_text.find(y) != -1:
					have_feelings.append(y)
					new_face ="res://img/avatar/1f645.png"
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
							new_face ="res://img/avatar/1f646.png"
							face_change(new_face)
							ai_say(str(i.to_lower(), ", hum?! I miss it too."))
							break
						if satisfied > 0:
							have_need.append(y)
							new_face ="res://img/avatar/1f646.png"
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
				new_face ="res://img/avatar/1f937.png"
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
		save_prefs()
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
	interface.append_bbcode(text)
#	heart.insert_text_at_cursor(text)
	chatmini.append_bbcode(text)
	
func append_text(text):
	interface.append_bbcode(text)
#	heart.insert_text_at_cursor(text)
	chatmini.append_bbcode(text)
	
func _on_Timer_timeout():
		get_tree().quit()
		
func _on_SendButton_button_up():
	var new_text = get_node("Cbar").get_text()
	_on_LineEdit_text_entered(new_text)
	
func _on_SendButton2_button_up():
	var sendtext = heart.text
	interface.set_bbcode(sendtext)
	get_node("Editor/Label").text = "chat updated"
#
func add_hashtags():
	var hashtags = user[4]["hashtags"]
	for i in hashtags:
		append_text(str(i+" "))

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

func _on_TimerMini_timeout():
	change_state("mini")

func _on_Control_gui_input(InputEventMouseButton):
	if addonmode == false:
			match state:
				"mini":
					change_state(state_old)
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		if addonmode == true and state == "mini":
			change_state(state_old)

func _on_Control_mouse_entered():
#	if addonmode == true and autohide == true:
	if autohide == true:
		match state:
			"mini":
				change_state(state_old)
			_:
				change_state("mini")

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

func _on_Blink_timeout():
	if !quiet:
		change_state(state_old)
		if autopause == true:
			get_tree().paused = true
	#	ai_say("Time to rest your eyes")
		new_face = "res://img/avatar/1f64b.png"
		face_change(new_face)
		$Pinky.visible = !$Pinky/Warning.visible
		$Pinky/Label.text = "Take 20 seconds to rest your eyes."
		if sound[0][0] == true:
			$Pinky/Alarm.play()
		$Brain/TimeOut.wait_time = 20
		$Brain/TimeOut.start()
		change_state(state_old)

func _on_RSI_timeout():
	change_state(state_old)
	if autopause == true:
		get_tree().paused = true
#	ai_say("Time to take a break")
	new_face = "res://img/avatar/1f64b.png"
	face_change(new_face)
	$Pinky/Warning.visible = !$Pinky/Warning.visible
	$Pinky/Label.text = "Time for 1 min rest \n to deactivate this type [b]rsi[/b]"
	$Pinky/Alarm.play()
	$Brain/TimeOut.wait_time = 60
	$Brain/TimeOut.start()
	change_state(state_old)

func _on_TimeOut_timeout():
	if autopause == true:
		get_tree().paused = false
		$Pinky/Warning.visible = false
		if sound[0][0] == true:
			$Pinky/Alarm.play()


func _on_close_button_up():
	editor.visible = false
#	if addonmode == false:
#			match state:
#				"hide":
#					OS.set_window_mouse_passthrough($AuraMedium.polygon)
#				"show":
#					OS.set_window_mouse_passthrough($AuraFull.polygon)

func _on_MouseOver():
	match state:
		"mini":
			change_state(state_old)
		_:
			change_state("mini")
			

func _on_RichTextLabel_meta_clicked():
	change_state("mini")
	print ("click no link")

func _on_Linkmini_button_up():
#	get_node("Interface/LineEdit").visible = !get_node("Interface/LineEdit").visible
	match state:
		"mini":
			change_state(state_old)
		_:
			change_state("mini")

func _on_LinkHide_button_up():
	match state:
		"hide":
			change_state("show")
#			get_node("Interface/LineEdit/LinkHide").text = "Hide"
		"show":
			change_state("hide")
#			get_node("Interface/LineEdit/LinkHide").text = "Show"

# crash test area EDITOR

var editing = ["note",""]
func editor(what,witch):
	if what == "note":
		editing[0] = "note"
		var x = 0
		for i in notes[0]:
			if i == witch:
				editing[1] = witch
				heart.text = notes[1][x]
				get_node("Editor/Label").text = "Editing : "+str(editing)
				head.visible = false
			x += 1
	if what == "chat":
		heart.text = ""
		heart.text = heart.text
	if what == "init":
		editing[0]="init"
		
		

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


func _on_save_button_up():
	var save_note_text = heart.text
	if editing[0] == "init":
		user[8][1] = get_node("Editor/TextEdit").text
		ai_say(initialize)
	if editing[0] == "note":
		var x = 0
		for i in notes[0]:
			if i == str(editing[1]):
#				save_note_text.replace("save note ","")
				notes[1][x] = save_note_text
				user[7] = notes
				text = str(datetime_to_string(OS.get_time()))+ "Saved note [b]"+i+"[/b] : " + save_note_text
				ai_say(text)
				auto_save()
			x += 1
		if x+1 == notes[1].size()+1 and !editing[1] in notes[0]:
				editing[0] ="note"
				editing[1] = str(x)
				ai_say(text)
				user[7][0].append(str(x))
				user[7][1].append(str(save_note_text))
				text = str(datetime_to_string(OS.get_time()))+ "Saved note name as [b]"+str(x-1)+"[/b] : " + save_note_text
				ai_say(text)
				auto_save()
	if editing[0] == "menu":
		get_node("Dock/Menu").bbcode_text = heart.text
	get_node("Editor/Label").text = "Saved: "+str(editing) +" by"+ str(datetime_to_string(OS.get_time())) 
func send_mail(to,what,new_text):
		var emailaddress = "diegodesenha@gmail.com"
#		OS.shell_open("https://mail.google.com/mail/?view=cm&ui=2&tf=0&fs=1&to=diegodesenha%40gmail.com&su=Angelica+Response&body=Hi,1%0aFrom+Agelica+App+with+love")
		var openfolder = false
		var mail_text = new_text.replace("mail ","")
		if to == "ss":
			mail_text = mail_text.replace("ss ","")
			openfolder = true
		if to == "@":
			mail_text = mail_text.replace("@ ","")
			mail_text = mail_text.replace(str(what),"")
			var key = str(what)
			print (key)
			var x = 0
			for i in links[0]:
				if i == key:
					mail_text += " "+links[1][x]+" "
#					print (tw_text)
					break
				x += 1
		if to == "note":
			mail_text = mail_text.replace("note ","")
#			mail_text = mail_text.replace(str(what,""))
			var key = str(what)
#			print (key)
			var x = 0
			for i in notes[0]:
				if i == key:
					mail_text += " "+notes[1][x]+" "
					break
				x += 1
		var hashtags_text=""
		if mail_text.find("#") != -1:
			mail_text = mail_text.replace("# ","")
			var hashtags = user[4]["hashtags"]
			for i in hashtags:
				hashtags_text = hashtags_text +i+" "
		mail_text = "https://mail.google.com/mail/?view=cm&ui=2&tf=0&fs=1&to="+emailaddress+"&su=Angelica+Response&body="+mail_text
		mail_text = mail_text.replace(" ","%20")
		mail_text = mail_text.replace("#","%2c")
		mail_text = mail_text.replace("=%2c","=")
		mail_text = mail_text.replace("@","%40")
		
		OS.shell_open(mail_text)
		if openfolder == true:
			OS.shell_open(OS.get_user_data_dir())

var dialogue = [
	"timer 3",
	"show",
	"new",
	"Angelica name Angelica121",
	"good morning",
	"Angelica121 color Fuchsia",
	"hello",
	"happy",
	"community",
	"Angelica121 name Angelica",
	"name UserName",
	"very wise...",
	"name Diego",
	"by the way!",
	"color #dfb000",
	"someone could make you a brain... I  might have that example downloaded!",
	"date",
	"You are growing fast Angelica! Now you have a demo command",
	"2*5",
	"time",
	"i talk to myself sometimes. I feel safe talking to you",
	"ai_name selfie",
	"What? what are you doing?????",
	"ai_name nothing, i am doing absolutly nothing!",
	"Oh-no! you are alive!",
	"ai_name no, i am not!",
	"What do you know about me?",
	"print have_feelings",
	"print have_need",
	"What about privacy?",
	"print user",
	"thats all that you know about me?",
	"add note Angelica121 This is a great example! i could tweet this note with [b]tw note Angelica121[/b] #",
	"edit note Angelica121",
	"editor",
	"add # angelica",
	"tw @ angelica I am testing Angelica Desktop Helper and she just opened my browser to send this tweet #",
	"del # angelica",
	"del note Angelica121",
	"help"
	]

func volume_change()-> void:
		var bus_idx = AudioServer.get_bus_index("Master")
		var volume = AudioServer.get_bus_volume_db(bus_idx)
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), volume -10)
		var alarm = $Alerts/Alarm
		if volume <= -30:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 0)
		alarm.play()
func sound_change():
	sound[0][0] = !sound[0][0]
	user[6][10] = sound
	if sound[0][0] == false:
		ai_say("Sound alerts are set to Off")
	else:
		ai_say("Sound alerts are set to On")
func alert(text):
	$Pinky.alert(text)
func _on_copy_button_up():
		OS.clipboard = heart.text
		append_text("\n")
		ai_say(str("Note copied to clipboard!"))
