extends YSort

	 #      $      $       $       $      *
	 #      #      #       #       #      #
# 1  #  0   #  0   #   D    #   A  #  Y   #  S #
################################################
################# Agelica 200 ##################
######2021-08-02 100 days of development########
################################################
################################################

onready var user = $"../User"
onready var alarm = $"AudioStreamPlayer"
onready var game = get_parent().get_node("Game")
onready var screenSize = get_viewport().get_visible_rect().size
onready var title = get_node("../Paint/Title/Title")
#onready var Cbar = get_node("../CommandBar")
onready var music = {"main":{"BPM":130,"name":"playing"},"tracks":{"0":{"BPM":260,"audiopack":"kenney","beat":"Ambient","fx":0,"loop":true,"volume":0},"1":{"BPM":130,"audiopack":"kylan","beat":"<><<>><< ","fx":0,"loop":true,"volume":0},"2":{"BPM":130,"audiopack":"openpath1","beat":"Diego01","fx":0,"loop":true,"volume":-11.428571}}}

var paint = preload("res://addons/angelica/GDPaint/PaintTools.tscn")
var pong = preload("res://addons/angelica/Games/Pong/pong.tscn")
var truck = preload("res://addons/angelica/Games/trucktown/car_select.tscn")
var love = preload("res://src/maps/Love.tscn")
var login = preload("res://addons/angelica/Login/Login.tscn")
var xperma = preload("res://src/maps/Xperma.tscn")
var glow = preload("res://addons/angelica/WorldEnviroments/Glow.tscn")
var studio = preload("res://addons/angelica/Studio/Studio.tscn")
var chat = preload("res://addons/angelica/Chat/Chat.tscn")
var editor = preload("res://addons/angelica/Editor/Editor.tscn")
var dj = preload("res://addons/angelica/DJ/DJ.tscn")
var dock = preload("res://addons/angelica/Dock/Dock.tscn")
var mini = preload("res://addons/angelica/Chat/ChatMini.tscn")
var rest = preload("res://addons/angelica/Health/Rest.tscn")

func text_entered(argument):
	synapse(argument)
func input_entered(argument):
	synapse(argument)
	
func ai_say(argument):
	$"Mini/ChatMini".bbcode_text += argument+"\n"

func studio(argument):
	synapse(argument)

func initialize():
	for i in user["initialize"]:
		synapse(i)
		yield(get_tree().create_timer(1), "timeout")

func quit(argument):
#	for i in quit:
		input_entered(argument)

func synapse(new_text):
	var command = []
	if new_text is String:
		command = new_text.split(" ", true, 4)
	match command[0]:
		"rest":
			if get_parent().has_node("Rest") == false:
				var instance = rest.instance()
				get_parent().add_child(instance)
			elif get_parent().has_node("Rest"):
				$"../Rest".visible = !$"../Rest".visible
		"dock":
			if self.has_node("Dock") == false:
				var instance = dock.instance()
				self.add_child(instance)
			else:
				get_node("Dock").queue_free()
		"mini":
			$Mini.visible = !$Mini.visible
		"volume":
			volume_change()
		"reset":
			get_tree().reload_current_scene()
		"init":
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
			var instance = truck.instance()
			if game.has_node("CarSelect") == false:
#				$"../".visible = false
				game.add_child(instance)
			elif game.has_node("CarSelect"):
				if game.has_node("TownScene"):
					get_node("../Game/TownScene").queue_free()
				get_node("../Game/CarSelect").queue_free()
#				$"../".visible = true
				ai_say("Good game!")
				quit("dj clear")
		"love":
			var instance = love.instance()
			if game.has_node("Love") == false:
#				$"../".visible = false
				game.add_child(instance)
			elif game.has_node("Love"):
				get_node("../Game/Love").queue_free()
#				$"../".visible = true
				ai_say("Good game!")
				quit("dj clear")
		"login":
			var instance = login.instance()
			if get_parent().has_node("Login") == false:
				get_parent().add_child(instance)
			elif get_parent().has_node("Login"):
				get_parent().get_node("Login").queue_free()
		"xperma":
			if game.has_node("XpermaWorld") == false:
				var instance = xperma.instance()
				game.add_child(instance)
			elif game.has_node("XpermaWorld"):
				get_node("../Game/XpermaWorld").queue_free()
				ai_say("Good game!")
				quit("dj clear")
		"glow":
			if get_node("../Paint").has_node("Glow") == false:
				var instance = glow.instance()
				get_node("../Paint").add_child(instance)
				ai_say("Shinny!")
			else:
				get_node("../Paint/Glow").queue_free()
				ai_say("Glow removed!")
		"title":
			if command.size() == 1 :
				title.get_parent().visible = !title.get_parent().visible
			else:
				new_text = new_text.replace("title ","")
				title.bbcode_text = new_text
				title.get_parent().visible = true
		"paint":
			var instance = paint.instance()
			if self.has_node("PaintTools") == false:
				visible = true
				self.add_child(instance)
			else:
				get_node("PaintTools").visible = !get_node("PaintTools").visible 
		"studio":
			var instance = studio.instance()
			if self.has_node("Studio") == false:
				visible = true
				self.add_child(instance)
			elif self.has_node("Studio"):
				get_node("Studio").visible = !get_node("Studio").visible
		"dj":
			if command.size() == 1:
				var instance = dj.instance()
				if self.has_node("DJ") == false:
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
		_:
			ai_say("command not processed: " + new_text)
#			if self.has_node("Mini") == true:
#				if get_node("Mini").visible == false:
#					 get_node("Mini").visible = true
#			else:
#				var instance = chat.instance()
#				self.add_child(instance)
#			ai_


func volume_change()-> void:
		var bus_idx = AudioServer.get_bus_index("Master")
		var volume = AudioServer.get_bus_volume_db(bus_idx)
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), volume -10)
		if volume <= -30:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 0)
		alarm.play()
