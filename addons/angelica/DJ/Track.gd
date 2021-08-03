extends Node2D
onready var players = [$AudioStreamPlayer1,$AudioStreamPlayer2,$AudioStreamPlayer3,$AudioStreamPlayer4,$AudioStreamPlayer5,$AudioStreamPlayer6,$AudioStreamPlayer7,$AudioStreamPlayer8,$AudioStreamPlayer8,$AudioStreamPlayer9,$AudioStreamPlayer10,$AudioStreamPlayer11,$AudioStreamPlayer12,$AudioStreamPlayer13,$AudioStreamPlayer14,$AudioStreamPlayer15,$AudioStreamPlayer16]
var playernum = 0
var close = true
var playing = false
var looping = true
var tracknumber = 0
var volume = 0
var fx 
var loop = true

onready var ascript = load("res://addons/angelica/DJ/SuperAudioStream.gd")
onready var bpms = 130
var loadtrack
var track = {0:{"BPM":130,"volume":0,"fx":0,"beat":"aaaa","loop":true,"audiopack":"kenney"}}

onready var beat = $LineEdit.text
onready var audiopack = track[tracknumber]["audiopack"]
onready var notes = $"../Sounds".audiopacks[audiopack]
onready var icon = $"../Sounds".icons[audiopack]
onready var playsound = notes["a"]

export var superbutton : PackedScene

func placeholder (count):
	tracknumber = count
	$LineEdit.placeholder_text = "track "+ str(count)
	update_notes()


func _on_Loop_pressed():
	if looping == true:
		looping = false
#		$Loop.pressed = false
	elif looping == false:
#		$Loop.pressed = true
		looping = true
	update_control()
	
func _on_Playing_pressed():
	if playing == false:
		$Playing.pressed = true
		playing = true
		bpms = $SpeedTune.value
		_on_LineEdit_text_entered($LineEdit.text)
	elif playing == true:
		playing = false
		$Playing.pressed = false
	update_control()

func _ready():
	if looping == true:
		$Loop.pressed = true
		looping = true
	else:
		$Loop.pressed = false
		looping = false
	bpms = 130
	var instance = superbutton.instance()
	add_child(instance)
	update_notes()
	update_control()
	$"Notes".visible = false


func update_notes():
	var bbcode = "[center][img]res://img/16/"+icon+".png[/img]  Audio Pack: " + audiopack + ". Track nº: "+str(tracknumber)+" [url=close][img]res://img/16/274e.png[/img][/url][/center]\n [url=_]__[/url]"
	for i in notes:
		bbcode += "[url="+i+"]"+i+"[/url] "
	$"Notes".bbcode_text = bbcode
#	$"Notes".visible = true
	
func _on_Menu_meta_clicked(meta):
	match meta:
		"play track":
			_on_Playing_pressed()
#			if playing == false:
#				bpms = $SpeedTune.value
#				_on_LineEdit_text_entered($LineEdit.text)
#			playing = !playing
		"paste":
			$LineEdit.text += OS.clipboard
		"copy":
			OS.clipboard = $LineEdit.text
		"kenney":
			audiopack = meta
			notes = $"../Sounds".audiopacks[audiopack]
			icon = $"../Sounds".icons[audiopack]
			get_node("SuperButton").update_icon()
			get_node("SuperButton")._on_bbcode_meta_hover_ended("")
			$"Notes".visible = true
			update_notes()

		"kylan":
			audiopack = meta
			notes = $"../Sounds".audiopacks[audiopack]
			icon = $"../Sounds".icons[audiopack]
			get_node("SuperButton").update_icon()
			get_node("SuperButton")._on_bbcode_meta_hover_ended("")
			update_notes()
			$"Notes".visible = true

		"openpath1":
			audiopack = meta
			notes = $"../Sounds".audiopacks[audiopack]
			icon = $"../Sounds".icons[audiopack]
			get_node("SuperButton").update_icon()
			get_node("SuperButton")._on_bbcode_meta_hover_ended("")
			update_notes()
			$"Notes".visible = true

		"rewind":
			stop_playing()
		"loop":
			_on_Loop_pressed()

func update_control():
	var rewind = "[url=rewind][img]res://img/16/23ee.png[/img][/url] "
	var loopbutton = "[url=loop][img]res://img/16/1f502.png[/img][/url] "
	var playbutton = "[url=play track][img]res://img/16/25b6.png[/img][/url]" 
	if playing == true:
		playbutton = "[url=play track][img]res://img/16/23f8.png[/img][/url]"
	if looping == true:
		loopbutton = "[url=loop][img]res://img/16/1f504.png[/img][/url] "
	$"Menu3".bbcode_text = rewind + loopbutton + playbutton


func _on_LineEdit_text_changed(new_text):
	beat = new_text
	var line = new_text
	var length = 0
	if line.length() > 0:
		length = line.length()-1
		if line[length] in notes:
				var stream = load(notes[line[length]])
				funk(stream)

var play_head = 0
func _on_LineEdit_text_entered(new_text) -> void:
	beat = new_text
	if playing == true and new_text !="":
		var bpm = 60/bpms
		$Timer.wait_time = bpm
		$Timer.start()
		if play_head >= beat.length():
			play_head = 0
			if looping == false:
				playing = false
				$Timer.stop()
				play_head = 0
				$Agulha.position.x = 0
		var nota
		if play_head < beat.length():
			nota = new_text[play_head]
		if nota in notes:
			var stream = load(notes[nota])
			funk(stream)
		$Agulha.position.x = play_head*8
		play_head += 1
		if play_head >= new_text.length()+1:
			loopcheck()

func loopcheck() -> void:
	if looping == true and playing == true:
		var new_text = $LineEdit.text
		_on_LineEdit_text_entered(new_text)
		if $LineEdit.text == "":
			stop_playing()
	if looping == false and playing == true:
		stop_playing()

func funk(stream):
	if playing == true:
		var newaudio = players[playernum]
		newaudio.set_stream(stream)
		newaudio.volume_db = volume
		newaudio.pitch_scale = $"Pitch".value
		newaudio.play()
		playernum +=1
	if playernum > 15:
		playernum = 0

func _on_MenuButton2_value_changed(value):
	var keys = notes.keys()
	var key = keys[value]
	var stream = load(notes[key])
	funk(stream)

func _on_SpeedTune_value_changed(value):
	bpms = value
	$"SpeedTune".value = bpms

func loadbeat(track):
		$Loop.pressed = track["loop"]
		$SpeedTune.value = track["BPM"]
		$LineEdit.text = track["beat"]
		beat = track["beat"]
		volume = track["volume"]
		fx = track["fx"]
		loop = track["loop"]
		looping = track["loop"]
		bpms = track["BPM"]
		audiopack = track["audiopack"]

func _on_Beat1_tree_exiting():
	get_parent().remove_track(self)

func _on_VSlider_value_changed(value):
	volume = value

func _on_Timer_timeout():
	_on_LineEdit_text_entered(beat)

func stop_playing():
	if playing == true:
		playing = false
		$Playing.pressed = false
	play_head = 0
	$Agulha.position.x = 0
	update_control()

func _on_Notes_meta_clicked(meta):
	if meta == "close":
		$"Notes".visible = false
	else:
		var new_text = $"LineEdit".text
		if new_text.length() < 16:
			new_text += meta
			$"LineEdit".text = new_text
			_on_LineEdit_text_entered(new_text)

func _on_Notes_meta_hover_started(meta):
	if meta in notes:
		var stream = load(notes[meta])
		$"Notes/AudioStreamPlayer".set_stream(stream)
		$"Notes/AudioStreamPlayer".volume_db = volume
		$"Notes/AudioStreamPlayer".play()

func _on_LineEdit_focus_entered():
	pass
#	$"Notes".visible = true
#	$"Notes".grab_focus()


func _on_LineEdit_focus_exited():
	pass # Replace with fun body.
	
func _on_Notes_focus_exited():
	pass # Replace with function body.

func _on_Notes_mouse_exited():
		$"Notes".visible = false


func _on_LineEdit_gui_input(event):
	if Input.is_action_just_pressed("Click"):
		$"Notes".visible = true
	


func _on_Timer2_timeout():
	$"Notes".visible = false
	pass # Replace with function body.


func _on_Pitch_value_changed(value):
	pass # Replace with function body.
