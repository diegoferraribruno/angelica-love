extends Node2D
onready var user = get_node("../User").ai_prefs
var icon = "1f441-1f5e8"
var mini = true
var autohide

onready var autopause = user["autopause"]
onready var blink = user["blink"]
onready var rest = user["rest"]
onready var yoga = user["yoga"]

func _ready():
	$"Blink".wait_time = user["blink_time"]
	$"Rest".wait_time = user["rest_time"]
	$"Yoga".wait_time = user["yoga_time"]
	print($"Blink".wait_time)
	$"Blink".start(0)
	$"Rest".start(0)
	$"Yoga".start(0)
	$"CheckBox".pressed = blink
	$"CheckBox2".pressed = rest
	$"CheckBox3".pressed = yoga
	$"CheckBox4".pressed = autopause
	$"CheckBox5".pressed = user["sounds"]
	$"BigAlert".position = Vector2(0,0)-position

func autopause() -> void:
	$"BigAlert".position = Vector2(0,0)-position
	if autopause == true:
		get_tree().paused = !get_tree().paused
		ai_say("Game pause is "+ str(get_tree().paused))
	$"Yoga".paused = !$"Yoga".paused
	$"Rest".paused = !$"Rest".paused 
	$"Blink".paused = !$"Blink".paused 

func _on_TimeOut_timeout():
	autopause()
#	$"TimeOut".stop()
	$"BigAlert".visible = false
#	$"BigAlert".position = $"BigAlert".position-position
	
	if autohide == true:
		visible = false
		
	sound("timeout")
###antes da pause
#	if yoga == true:
#		$"yoga".play()
#	if rest == true:
#		$Rest.start()
#	if blink == true:
#		$Blink.start()

func _on_Blink_timeout():
	autopause()
	visible = true
	$BigAlert.visible = true
	$"BigAlert/Label".visible = true
	$"BigAlert/Text".bbcode_text = "[center][img=400px]res://img/64/1f441-1f5e8.png[/img]\nRelax your eyes!\n[url=skip]skip[/url]   [url=5min]+5 min[/url] [/center]"
	sound("blink")
	$TimeOut.wait_time = user["blink_timer"]
	$TimeOut.start()

func _on_Yoga_timeout():
	autopause()
	sound("yoga")
	visible = true
	big_alert("[center][rainbow]Time for yoga!\n[url=skip]skip[/url]  [url=5min]+5 min[/url] [/center]")
	$TimeOut.wait_time = user["yoga_timer"]
	$TimeOut.start()
	$"yoga".stop()

func _on_Rest_timeout():
	autopause()
	if user["sounds"] == true:
		$"Alarm".play()
	big_alert("[center][fade start=4 length=14]Time for yoga![/fade]\n[url=skip]skip[/url]  [url=5min]+5 min[/url] [/center]")
	$TimeOut.wait_time = user["rest_timer"]
	$TimeOut.start()
	$"Rest".stop()

func _on_Updater_timeout():
	$"BigAlert/Label".text = str(convert_time(int($TimeOut.get_time_left())))
	$"ShotPause".text = str(convert_time(int($"Blink".get_time_left())))
	$"LongPause".text = str(convert_time(int($"Rest".get_time_left())))
	$"YogaPause".text = str(convert_time(int($"Yoga".get_time_left())))

func big_alert(text):
	$"BigAlert/Label".visible = true
	$BigAlert.visible = true
	$"BigAlert/Text".bbcode_text = text

func convert_time(time):
	var hour: = int(time/60/60)
	var minutes = time/60
	minutes = int(fmod(minutes,60))
	var seconds := fmod(time, 60)
	return "%02d:%02d:%02d" % [hour, minutes, seconds]

func _on_CheckBox_pressed():
	if blink == true:
		blink = false
		$Blink.stop()
	else:
		blink = true
#		$"Blink".wait_time = user["blink_time"]
		$"Blink".start()

func _on_CheckBox2_pressed():
	if rest == true:
		rest = false
		$Rest.stop()
	else:
		rest = true
#		$"Rest".wait_time = user["rest_time"]
		$"Rest".start()

func _on_CheckBox3_pressed():
	if yoga == true:
		yoga = false
		$Yoga.stop()
	else:
		yoga = true
#		$"Yoga".wait_time = user["yoga_time"]
		$"Yoga".start()

func _on_BigAlert_meta_clicked(meta):
	match meta:
		"skip":
			_on_TimeOut_timeout()
			$"TimeOut".stop()
#			$"BigAlert".visible = false
		"5min":
			$"TimeOut".wait_time += 300
			$"TimeOut".start()

func _on_CheckBox4_pressed():
	togle_autopause()

func togle_autopause():
	autopause = !autopause 
	user["autopause"] = autopause
	get_parent().ai_say("auto pause is set to "+ str(autopause))

func ai_say(new_text):
	get_parent().ai_say(new_text)
	pass

func sound(alarm):
	if user["sounds"] == true:
		$"Alarm".play()

func _on_CheckBox5_pressed():
	user["sounds"] = !user["sounds"]
