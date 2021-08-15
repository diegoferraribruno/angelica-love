extends YSort

onready var user = $"../User"
onready var alarm = $"AudioStreamPlayer"
onready var game = get_parent().get_node("Game")
onready var screensize = get_viewport().get_visible_rect().size
onready var music = {"main":{"BPM":130,"name":"playing"},"tracks":{"0":{"BPM":260,"audiopack":"kenney","beat":"Ambient","fx":0,"loop":true,"volume":0},"1":{"BPM":130,"audiopack":"kylan","beat":"<><<>><< ","fx":0,"loop":true,"volume":0},"2":{"BPM":130,"audiopack":"openpath1","beat":"Diego01","fx":0,"loop":true,"volume":-11.428571}}}

export var dj : PackedScene
#var dj = preload("res://addons/angelica/DJ/DJ.tscn")
var paint = preload("res://addons/angelica/GDPaint/PaintTools.tscn")
var pong = preload("res://addons/angelica/Games/Pong/pong.tscn")
var truck = preload("res://addons/angelica/Games/trucktown/car_select.tscn")
var love = preload("res://src/maps/Love.tscn")
var login = preload("res://addons/angelica/Login/Login.tscn")
var xperma = preload("res://src/cutscenes/abertura/abertura.tscn")
var city = preload("res://src/maps/City.tscn")
var glow = preload("res://addons/angelica/WorldEnviroments/Glow.tscn")
var studio = preload("res://addons/angelica/Studio/Studio.tscn")
var chat = preload("res://addons/angelica/Chat/Chat.tscn")
var editor = preload("res://addons/angelica/Editor/Editor.tscn")
var dock = preload("res://addons/angelica/Dock/Dock.tscn")
var mini = preload("res://addons/angelica/Chat/ChatMini.tscn")
var rest = preload("res://addons/angelica/Health/Rest.tscn")
var next = preload("res://addons/angelica/Next/Next.tscn")
var star = preload("res://addons/angelica/Star/Star.tscn")
var title = preload("res://addons/angelica/Title/FloatingTitle.tscn")
var phone = preload("res://addons/angelica/Dock/Phone.tscn")
var bird = preload("res://addons/angelica/Bird/Bird.tscn")
var friends = preload("res://src/maps/friends.tscn")

func text_entered(argument):
	synapse(argument)
	
func input_entered(argument):
	synapse(argument)
	
func ai_say(argument):
	if $"Mini".visible == false:
		$"Mini".visible = true
	$"Mini/ChatMini".bbcode_text += argument+"\n"

func studio(argument):
	synapse(argument)

func initialize():
	for i in user.user["initialize"]:
		synapse(i)
		yield(get_tree().create_timer(0.1), "timeout")

func quit(argument):
	input_entered(argument)

func synapse(new_text):
	var command = []
	if new_text is String:
		command = new_text.split(" ", true, 4)
	match command[0]:
		"hide":
			get_parent()._on_AngelicaButton_meta_clicked(new_text)
		"shades":
			$"../Shades".visible = not $"../Shades".visible
		"user":
			print_user()
		"rest":
			if get_parent().has_node("Rest") == false:
				var instance = rest.instance()
				get_parent().add_child(instance)
			elif get_parent().has_node("Rest"):
				$"../Rest".visible = !$"../Rest".visible
		"phone":
			if has_node("Phone") == false:
				var instance = phone.instance()
				add_child(instance)
			elif has_node("Phone"):
				$"Phone".visible = !$"Phone".visible
		"bird":
			if has_node("Bird") == false:
				var instance = bird.instance()
				add_child(instance)
			elif has_node("Bird"):
				$"Bird".visible = !$"Bird".visible
		"next":
			if self.has_node("Next") == false:
				var instance = next.instance()
				self.add_child(instance)
			elif self.has_node("Next"):
				$"Next".queue_free()
		"star":
			if self.has_node("Star") == false:
				var instance = star.instance()
				self.add_child(instance)
			elif self.has_node("Star"):
				$"Star".queue_free()
		"dock":
			if get_parent().has_node("Dock") == false:
				var instance = dock.instance()
				get_parent().add_child(instance)
			else:
				get_parent().get_node("Dock").queue_free()
		"mini":
			$Mini.visible = !$Mini.visible
		"volume":
			volume_change()
		"reset":
			get_tree().reload_current_scene()
		"initialize":
			initialize()
		"folder":
			ai_say("opening folder: "+str(OS.get_user_data_dir()))
			OS.shell_open(OS.get_user_data_dir())
		"pause":
			get_tree().paused = !get_tree().paused
			ai_say("Game pause is "+ str(get_tree().paused))
#		"editor":
#			calleditor("note","new")
		"pong":
			if game.has_node("Pong") == false:
				var instance = pong.instance()
				game.add_child(instance)
			elif game.has_node("Pong"):
				get_node("../Game/Pong").queue_free()
				ai_say("Good game!")
#				quit("dj clear")
		"chat":
			if self.has_node("Chat") == false:
				var instance = chat.instance()
				self.add_child(instance)
			elif self.has_node("Chat"):
				self.get_node("Chat").queue_free()
				ai_say("Chat Off")
		"truck":
			if game.has_node("CarSelect") == false:
				var instance = truck.instance()
				game.add_child(instance)
			elif game.has_node("CarSelect"):
				if game.has_node("TownScene"):
					get_node("../Game/TownScene").queue_free()
				get_node("../Game/CarSelect").queue_free()
				ai_say("Good game!")
#				quit("dj clear")
		"love":
			var instance = love.instance()
			if game.has_node("Love") == false:
				game.add_child(instance)
			elif game.has_node("Love"):
				get_node("../Game/Love").queue_free()
				ai_say("What was that?")
		"friends":
			var instance = friends.instance()
			if game.has_node("Friends") == false:
				game.add_child(instance)
			elif game.has_node("Friends"):
				get_node("../Game/Friends").queue_free()
#				ai_say("What was that?")
#				quit("dj clear")
		"login":
			var instance = login.instance()
			if self.has_node("Login") == false:
				self.add_child(instance)
			elif self.has_node("Login"):
				get_node("Login").queue_free()
		"xperma":
			if game.has_node("XpermaWorld") == false:
				var instance = xperma.instance()
				game.add_child(instance)
			elif game.has_node("XpermaWorld"):
				get_node("../Game/XpermaWorld").queue_free()
				ai_say("Good game!")
		"city":
			if game.has_node("City") == false:
				var instance = city.instance()
				game.add_child(instance)
				synapse("glow on")
			elif game.has_node("City"):
				get_node("../Game/City").queue_free()
#				quit("dj clear")
		"glow":
			if command.size() == 1 :
				if get_node("../Paint").has_node("Glow") == false:
					var instance = glow.instance()
					get_node("../Paint").add_child(instance)
				else:
					get_node("../Paint/Glow").queue_free()
					ai_say("Glow removed!")
			else:
				if command[1] == "on":
					if get_node("../Paint").has_node("Glow") == false:
						var instance = glow.instance()
						get_node("../Paint").add_child(instance)
				elif command[1] == "off":
					if get_node("../Paint").has_node("Glow") == true:
						get_node("../Paint/Glow").queue_free()
						ai_say("Glow removed!")
		"title":
			if get_node("../Paint").has_node("Title") == false:
				var instance = title.instance()
				get_node("../Paint").add_child(instance)
			if command.size() == 1:
					get_node("../Paint/Title").visible = !get_node("../Paint/Title").visible
			else:
				new_text = new_text.replace("title ","")
				get_node("../Paint/Title/RichTextLabel").bbcode_text = new_text
				get_node("../Paint/Title").visible = true
		"paint":
			if self.has_node("PaintTools") == false:
				var instance = paint.instance()
				visible = true
				self.add_child(instance)
			else:
				get_node("PaintTools").visible = !get_node("PaintTools").visible 
		"studio":
			if self.has_node("Studio") == false:
				var instance = studio.instance()
				visible = true
				self.add_child(instance)
			elif self.has_node("Studio"):
				get_node("Studio").visible = !get_node("Studio").visible
		"dj":
			if command.size() == 1:
				if self.has_node("DJ") == false:
					var instance = dj.instance()
					visible = true
					self.add_child(instance)
				elif self.has_node("DJ"):
					if self.get_node("DJ").visible == false:
						self.get_node("DJ").visible = true
					else: 
						self.get_node("DJ").visible = false
			else:
				if self.has_node("DJ") == false:
					var instance = dj.instance()
					visible = false
					self.add_child(instance)
				if command[1] == "play":
					if command.size()>2:
						get_node("DJ").add_and_play(command[2])
					else:
						get_node("DJ")._on_RichTextLabel_meta_clicked(command[1])
				elif command[1] == "clear":
					get_node("DJ")._on_RichTextLabel_meta_clicked(command[1])
		"ss":
			screen_shot(false)
		"screenshot":
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
		"save":
			save_prefs()
		"bye":
			save_prefs()
			ai_say(str("Bye. (Reload to come back)"))
			$"Bye".start()
		_:
			ai_say("command not processed: " + new_text)

func screen_shot(selfie):
	if user.user["name"] != "Player":
		if selfie == false:
			visible = false
			get_node("../Dock").visible = false
			
		yield(get_tree(), "idle_frame")
		yield(get_tree(), "idle_frame")
		var image = get_viewport().get_texture().get_data()
		image.flip_y()
		image.save_png("user://"+user.user["name"]+"/screenshots/ssAngelica"+datetime_to_string(OS.get_date())+"-"+datetime_to_string(OS.get_time())+".png")
		ai_say("File saved to" +str(OS.get_user_data_dir()))
		if selfie == false:
			visible = true
			get_node("../Dock").visible = true
	else:
		ai_say("Please [url=login]login[/url] first so we can know where to save your pictures")

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

func volume_change()-> void:
		var bus_idx = AudioServer.get_bus_index("Master")
		var volume = AudioServer.get_bus_volume_db(bus_idx)
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), volume -10)
		if volume <= -30:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 0)
		alarm.play()

func save_prefs():
	var to_store = get_node("../User").user
	var FILE_NAME = str("user://"+to_store["name"]+"/preferences/user.json")
	print(FILE_NAME)
	var file = File.new()
	file.open(FILE_NAME, File.WRITE)
	file.store_string(to_json(to_store))
	file.close()
#	ai_say("Preferences saved")

func print_user():
	ai_say(str(user.user))

func _on_RichTextLabel_meta_clicked(meta):
	synapse(meta)

func add_app(app,app_xy):
	get_node("../").add_app(app,app_xy)

func _on_Bye_timeout():
	get_tree().quit()
