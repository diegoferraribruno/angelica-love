extends Node2D

var title = "DJ"
var icon = "1f3a7"
var close = true
var mini = true

#var audacitypath = ["flatpak run org.audacityteam.Audacity","flatpak list"]
var user = {
	"name":"default"
	}
var loop = ""
var count = 0
var trackerposition = Vector2(0,28)
var playing = false
var m_name = "New track"
var allmusic

onready var track = load("res://addons/angelica/DJ/Track.tscn")
onready var musiclist = load("res://addons/angelica/DJ/MusicPop.tscn")
onready var tracks = []
onready var bpm = 130
onready var speed_a = 130

const menu = "[url=add music][img]res://img/32/23ec.png[/img][/url] [url=save music][img]res://img/32/23eb.png[/img][/url] [url=clear][img]res://img/16/1f5d9.png[/img][/url] [url=rewind][img]res://img/32/23ee.png[/img][/url] [url=loop all][img]res://img/32/1f504.png[/img][/url] [url=play][img]res://img/32/25b6.png[/img][/url]"

func _on_SpeedTune2_value_changed(value):
	speed_a = value

func _ready():
	speed_a = 130
	bpm = 130
	loadmusic("New track")
	$Menu.bbcode_text = menu

func play_dj(bpm):
	for i in $Loop.text:
		var x = int(i)
		if x < tracks.size():
			tracks[x]._on_Playing_pressed()

func add_and_play(music):
	if typeof(music) == TYPE_DICTIONARY:
		allmusic[music["name"]] = music
	elif music in allmusic:
		loadmusic(music)
	else:
		allmusic["playing"] = get_parent().music
		print(allmusic)
		loadmusic("playing")
	playing = !playing
	play_dj(bpm)

func loop_all():
	for i in $Loop.text:
		var x = int(i)
		if x < tracks.size():
			tracks[x]._on_Loop_pressed()

func rewind():
	for i in $Loop.text:
		var x = int(i)
		if x < tracks.size():
			tracks[x].loopcheck()
			tracks[x].stop()

func _on_RichTextLabel_meta_clicked(meta):
	match meta:
		"play":
			playing = !playing
			play_dj(bpm)
		"loop all":
			loop_all()
#		"clear":
#			$TextEdit.text = ""
		"paste":
			$LineEdit.text += OS.clipboard
		"add music":
			var m_name = $"MusicName".text
			if m_name in allmusic:
				loadmusic(m_name)
		"clear":
			for i in tracks:
				i.queue_free()
		"rewind":
			rewind()
		"add track":
			loadmusic("New track")
		"save music":
			save_music()
		"list music":
			if has_node("MusicPop") == false:
				var instance = musiclist.instance()
				get_node(".").add_child(instance)
		"cancel":
			$"SavePopUp".visible = false
func save_music():
	var mymusic = {}
	var m_name = $"MusicName".text
	if m_name != "New track" and m_name != "":
		mymusic = {
			"main":{"name":m_name,"BPM":$"SpeedTune".value},
			"tracks":{
					0:{"BPM":130,"volume":0,"fx":0,"beat":"","loop":true,"audiopack":""}
				}
			}
		for i in tracks:
			var newtrack = {"BPM":i.bpms,"volume":i.volume,"fx":i.fx,"beat":i.beat,"loop":i.looping,"audiopack":i.audiopack}
			mymusic["tracks"][tracks.find(i)] = newtrack
#		$Music.music[m_name] = mymusic
		allmusic[m_name] = mymusic
		var FILE_NAME = "user://"+user["name"]+"/music/music.json"
		var file = File.new()
		file.open(FILE_NAME, File.WRITE)
		file.store_string(to_json(allmusic))
		file.close()
	else:
		$"SavePopUp".visible = true
		
func loadmusic(m_name):
	allmusic = {}
	var file = File.new()
	var FILE_NAME = "user://"+user["name"]+"/music/music.json"
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			allmusic = data
		else:
			printerr("No saved data! type 'save' to make a new file. \n Remember to aways save after making changes.")
	allmusic["New track"] = {
		"main":{"name":"New track","icon":""},
		"tracks":{
			0:{"BPM":130,"volume":0,"fx":0,"beat":"","loop":true,"audiopack":"kenney"}
		}}
	allmusic["playing"] = get_parent().music
	count = tracks.size()
	for i in allmusic[m_name]["tracks"]:
		var audiopack = allmusic[m_name]["tracks"][i]["audiopack"]
		var instance = track.instance()
		instance.position = trackerposition*count+Vector2(0,40)
		get_node(".").add_child(instance)
		instance.icon = $"Sounds".icons[audiopack]
		instance.loadbeat(allmusic[m_name]["tracks"][i])
		instance._on_Menu_meta_clicked(audiopack)
		instance.placeholder(count)
#		instance.z_index = -1
		count += 1
		tracks.append(instance)
		if m_name == "New track":
			var tbpm = $"SpeedTune".value
			instance.bpms = tbpm
			instance._on_SpeedTune_value_changed(tbpm)

func remove_track(track):
	var trackout = tracks.find(track)
	tracks.remove(trackout)
	count = tracks.size()
	for i in tracks:
		count = tracks.find(i)
		i.placeholder(count)
		i.position = trackerposition*count+Vector2(0,40)
func _on_SpeedTune_value_changed(value):
	bpm = value

func _on_Loop_text_entered(new_text):
	pass # Replace with function body.

func _on_Loop_text_changed(new_text):
	pass # Replace with function body.

func _on_RichTextLabel_meta_hover_started(meta):
	$"Hint".visible = true
	var mouse = get_local_mouse_position()
	$Hint.hint(meta,mouse)

func _on_RichTextLabel4_meta_hover_ended(meta):
	$"Hint".visible = true
	var mouse = get_local_mouse_position()

func _on_RichTextLabel_meta_hover_ended(meta):
	$"Hint".visible = false
func _on_RichTextLabel4_meta_hover_started(meta):
	$"Hint".visible = false

func _on_MusicName_gui_input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		if has_node("MusicPop") == false:
			var instance = musiclist.instance()
			get_node(".").add_child(instance)
			
func add_app(x,y):
	pass
