extends Node2D
var close = true
var icon = "1f3b9"
var playing = false
var looping = true
var  tracknumber = 0
var volume = 0
var fx 
var loop = true
#onready var notes = $"../Sounds".kenney
onready var notes = $"../Sounds".percursao
onready var beats = $"../Sounds".percursao
#onready var beats = $"../Sounds".kylan
onready var playsound = notes["a"]
onready var ascript = load("res://addons/angelica/DJ/SuperAudioStream.gd")
onready var bpms = 130
var loadtrack
var track = {"track1":{"BPM":130,"volume":0,"fx":0,"beat":"aaaa","loop":true}}
onready var beat = $LineEdit.text

func placeholder (count):
	tracknumber = count
	$LineEdit.placeholder_text = "track "+ str(count)

func _on_Loop_pressed():
	if looping == true:
		looping = false
		$Loop.pressed = false
	elif looping == false:
		$Loop.pressed = true
		looping = true

func _on_Playing_pressed():
	if playing == false:
		$Playing.pressed = true
		playing = true
		bpms = $SpeedTune.value
		_on_LineEdit_text_entered($LineEdit.text)
	elif playing == true:
		playing = false
		$Playing.pressed = false


func _ready():
	if looping == true:
		$Loop.pressed = true
	for i in beats:
		$MenuButton.get_popup().add_item(i)
	$MenuButton.get_popup().connect("id_pressed", self, "_on_SpinBox_value_changed")
	for i in notes:
		$MenuButton2.get_popup().add_item(i)
	$MenuButton2.get_popup().connect("id_pressed", self, "_on_MenuButton2_value_changed")
	bpms = 130

func _on_Menu_meta_clicked(meta):
	match meta:
		"play beat":
			if playing == false:
				bpms = $SpeedTune.value
				_on_LineEdit_text_entered($LineEdit.text)
			playing = !playing
		"paste":
			$LineEdit.text += OS.clipboard
		"copy":
			OS.clipboard = $LineEdit.text

func _on_LineEdit_text_changed(new_text):
	beat = new_text
	var line = new_text
	var length = 0
	if line.length() > 0:
		length = line.length()-1
		if line[length] in notes:
				var stream = load(notes[line[length]])
				funk(stream)
#		if line[length] in beats:
#				var stream = load(beats[line[length]])
#				funk(stream)
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
#		if nota in beats:
#			var stream = load(beats[nota])
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
			stop()
	if looping == false and playing == true:
		stop()
#		$Playing.pressed = false

func funk(stream):
	if playing == true:
		var newaudio = AudioStreamPlayer.new()
		newaudio.set_stream(stream)
		newaudio.set_script(ascript)
		newaudio.volume_db = volume
		add_child(newaudio)

func _on_MenuButton2_value_changed(value):
	var keys = notes.keys()
	var key = keys[value]
	var stream = load(notes[key])
	funk(stream)
	
func _on_SpinBox_value_changed(value):
	var keys = beats.keys()
	var key = keys[value]
	var stream = load(beats[key])
	funk(stream)

func _on_SpinBox2_value_changed(value):
	var keys = beats.keys()
	var key = keys[value]
	var stream = load(beats[key])
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
		bpms = track["BPM"]

func _on_Beat1_tree_exiting():
	get_parent().remove_track(self)

func _on_VSlider_value_changed(value):
	volume = value

func _on_Timer_timeout():
	_on_LineEdit_text_entered(beat)

func stop():
	if playing == true:
		playing = false
		$Playing.pressed = false
#	_on_Playing_pressed()
	play_head = 0
	$Agulha.position.x = 0
