extends Node2D
onready var user = get_node("../User").ai_prefs
var rsiblink := true
var autopause := true
var mini = true


func _ready():
	$"Blink".wait_time = user["blink_time"]
	$"Rest".wait_time = user["rest_time"]
	$"Yoga".wait_time = user["yoga_time"]
	print($"Blink".wait_time)
	$"Blink".start(0)
	$"Rest".start(0)
	$"Yoga".start(0)
	
func _on_TimeOut_timeout():
	if autopause == true:
		get_tree().paused = false
		visible = false
		if user["sounds"] == true:
			$"Alarm".play()
#		get_parent().input_entered("dj clear")
#		if sound[0][0] == true:
#			$"../Alerts/Alarm".play()
	$"yoga".start()

func _on_Blink_timeout():
#	if !quiet:
#		if autopause == true:
#			get_tree().paused = true
#	#	ai_say("Time to rest your eyes")
#		new_face = "1f64b"
#		face_change(new_face)
		visible = true
		$Label.text = "Take 20 seconds to rest your eyes."
		if user["sounds"] == true:
			$"Alarm".play()
#		get_parent().input_entered("dj play blink")
		$TimeOut.wait_time = 20
		$TimeOut.start()


func _on_Yoga_timeout():
	
		visible = true
		$Label.text = "Take 20 seconds to rest your eyes."
		if user["sounds"] == true:
			$"Alarm".play()
#		get_parent().input_entered("dj play blink")
		$TimeOut.wait_time = 60
		$TimeOut.start()
		$"yoga".stop()

	
func _on_Rest_timeout():
		if user["sounds"] == true:
			$"Alarm".play()
#	pass # Replace with function body.
func _on_RSI_timeout():
	if autopause == true:
		get_tree().paused = true
#	ai_say("Time to take a break")
#	new_face = "1f64b"
#	face_change(new_face)
	visible = true
	$Label.text = "Time for 1 min rest (or yoga) \n To deactivate this type [b]rsi[/b]"
	$Alarm.play()
#	get_parent().input_entered("dj play Rest")
	$TimeOut.wait_time = 60
	$TimeOut.start()
	
func synapse(command):
#	match command:
#				"rsi":
#					if command.size() == 1:
#						var rsi = rsiblink[0][0] 
#						rsiblink[0][0] = !rsi
#						if rsiblink[0][0] == false:
#							$RSI.stop()
#							ai_say("RSI set to " + str(rsiblink[0][0])+ " to turn it on again type [b]rsi[/b]")
#						else:
#							$RSI.start()
#							ai_say("RSI set to " + str(rsiblink[1][0]) + ". to turn it off type [b]rsi[/b]")
#					elif command.size() == 2:
#						var seconds = int(command[1])*60
#						rsiblink[1][0] = int(seconds)
#						$RSI.wait_time = rsiblink[1][0]
#						if rsiblink[0][0] == true:
#							$RSI.start()
#						ai_say("RSI timer interval set to "+ str(command[1]) +" minutes")
#				"blink":
#					if command.size() == 1:
#						var blink = rsiblink[0][1] 
#						rsiblink[0][1] = !blink
#						if rsiblink[0][1] == false:
#							$Blink.stop()
#							ai_say("blink timer is off now. Type [b]blink[/b] to turn it on again")
#						else:
#							$Blink.start()
#							ai_say("Blink timer is set to " + str(rsiblink[1][1]) + " minutes")
#					elif command.size() == 2:
#						var seconds = int(command[1])*60
#						rsiblink[1][1] = int(seconds)
#						$Blink.wait_time = int(seconds)
#						if rsiblink[0][1] == true:
#							$Blink.start()
#						ai_say("Blink timer interval set to "+ str(command[1])+ " minutes.")
	pass

func autopause():
	autopause = !autopause 
	get_parent().ai_say("auto pause is set to "+ str(autopause))


func _on_Updater_timeout():
	$"Label".text = str(int($TimeOut.get_time_left()))
	$"ShotPause".text = str(int($"Blink".get_time_left()))
	$"LongPause".text = str(int($"Rest".get_time_left()))
	$"YogaPause".text = str(int($"Yoga".get_time_left()))
	pass # Replace with function body.


