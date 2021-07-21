extends Node

var user = {"name":"default"}
var FILE_NAME = user["name"]# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	_new_user()
	pass # Replace with function body.

func _new_user():
	var pre = "user://"+user["name"]
	var dirs = ["","/notes","/screenshots","/preferences","/music"]
	var directory = Directory.new()
	for i in dirs:
		var dir = pre+i
		directory.make_dir(dir)
		print (dir)

func load_user_prefs():
	var file = File.new()
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			user = data
#			lastposition = ai_prefs[11]
			get_parent().ai_say("OH! it is you [b][color="+user["color"]+"]"+user["name"]+"[/color][/b]?")
		else:
			printerr("No saved data! type 'save' to make a new file. \n Remember to aways save after making changes.")

func save_prefs(user):
	var file = File.new()
	file.open(FILE_NAME, File.WRITE)
	file.store_string(to_json(user))
	file.close()
	get_parent().ai_say("user prefereces recorded")
