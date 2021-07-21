extends Node2D
var supermenu
var close = true
var icon = "[img]res://addons/angelica/images/16/1f4df.png[/img]"
var mini = true
var user = {"name":"default"}
onready var heart = $"TextEdit"
#onready var notes = $"../Brain/"
var notes = {
	"1":{
		"name":"to do",
		"date":"today",
		"content":"#this is your note editor. Erease this to start editing.",
		"type":"note",
		"emoji":"",
		} 
	}
var link = {
	
}
const types = ["note","notebook","link","chain","hastags"]
func _ready():
#	save_note("1")
	load_notes()
#	screen_shot()
	
func save_note(witch):
	var FILE_NAME = "user://"+user["name"]+"notes/angelica-notes.json"
	notes[witch]["content"] = $TextEdit.text
	var file = File.new()
	file.open(FILE_NAME, File.WRITE)
	file.store_string(to_json(notes))
	file.close()
	print(OS.get_user_data_dir())

func load_notes():
	var file = File.new()
	var FILE_NAME = "user://"+user["name"]+"notes/angelica-notes.json"
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			notes = data
			print (notes)
		else:
			printerr("No saved data! type 'save' to make a new file. \n Remember to aways save after making changes.")

func _on_EditorButton_button_up():
	visible = !visible
	
func _on_edit_note():
	visible = true
	$"TextEdit".fold_all_lines ( )

func _on_copy_button_up():
		OS.clipboard = heart.text
#		append_text("\n")
#		$"../".ai_say(str("Note copied to clipboard!"))

func edit(command):
				if command[1] == "chat":
					get_node("../Editor/TextEdit").text = get_node("../Chat/Interface").bbcode_text
					editing = ["chat",false]
					_on_edit_note()
#				if command[1] == "init":
#					var inits = "" 

#					for i in user[8][1]:
#						inits += i
#					get_node("../Editor/TextEdit").text = str(user[8][1])
#					editor(command[1],false)
#					_on_edit_note()
				if command[1] == "menu":
					get_node("../Editor/TextEdit").text = get_node("../Dock/Menu").bbcode_text
					editing = ["menu",""]
					_on_edit_note()
				if command.size() == 2 and command[1] == "note":
					$"../".ai_say("Here is a list of your notes:\n%s\n Please type: edit note name") % []
				elif command.size() > 2:
					editor(command[1], command[2])
					_on_edit_note()
#				heart.visible = true
#				heart.set_text("")
#				editing = get(command[1])
#				heart.insert_text_at_cursor(str(editing))


var editing = ["note",""]

func editor(what,witch):
	if what == "note":
		editing[0] = "note"
		for i in notes:
			if i == witch:
				editing[1] = witch
				heart.text = notes[i]["content"]
				get_node("../Editor/Label").text = "Editing : "+str(editing)
#				head.visible = false
#	if what == "chat":
#		heart.text = ""
#		heart.text = interface.text
	if what == "init":
		editing[0]="init"
func screen_shot():
#				if selfie == false:
#					get_node("../").visible = false
				yield(get_tree(), "idle_frame")
				yield(get_tree(), "idle_frame")
				var image = get_viewport().get_texture().get_data()
				image.flip_y()
				image.save_png("user://screenshots/ssAngelica.png")
#				text = "File saved to" +str(OS.get_user_data_dir())

#				ai_say(text)

#
#func _on_save_button_up():
#	var save_note_text = heart.text
#	if editing[0] == "init":
#		user[8][1] = get_node("../Editor/TextEdit").text
#		ai_say(initialize)
#	if editing[0] == "note":
#		var x = 0
#		for i in notes[0]:
#			if i == str(editing[1]):
##				save_note_text.replace("save note ","")
#				notes[1][x] = save_note_text
#				user[7] = notes
#				text = str(datetime_to_string(OS.get_time()))+ "Saved note [b]"+i+"[/b] : " + save_note_text
#				ai_say(text)
#				auto_save()
#			x += 1
#		if x+1 == notes[1].size()+1 and !editing[1] in notes[0]:
#				editing[0] ="note"
#				editing[1] = str(x)
#				ai_say(text)
#				user[7][0].append(str(x))
#				user[7][1].append(str(save_note_text))
#				text = str(datetime_to_string(OS.get_time()))+ "Saved note name as [b]"+str(x-1)+"[/b] : " + save_note_text
#				ai_say(text)
#				auto_save()
#	if editing[0] == "menu":
#		get_node("Dock/Menu").bbcode_text = heart.text
#		get_node("../Editor/Label").text = "Saved: "+str(editing) +" by"+ str(datetime_to_string(OS.get_time())) 


func _on_copy_button_down():
	pass # Replace with function body.


func _on_save_button_up():
	save_note("1")
	pass # Replace with function body.
