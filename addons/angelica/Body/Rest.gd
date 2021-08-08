extends Node2D

var rsiblink := true
var autopause := true
#var icon = ""


func _on_TimeOut_timeout():
	if autopause == true:
		get_tree().paused = false
		$"../Alerts".visible = false
#		if sound[0][0] == true:
#			$"../Alerts/Alarm".play()

func _on_Blink_timeout():
#	if !quiet:
#		if autopause == true:
#			get_tree().paused = true
#	#	ai_say("Time to rest your eyes")
#		new_face = "1f64b"
#		face_change(new_face)
		$"../Alerts".visible = !$"../Alerts".visible
		$"../Alerts/Label".text = "Take 20 seconds to rest your eyes."
#		if sound[0][0] == true:
#			$"../Alerts/Alarm".play()
		$TimeOut.wait_time = 20
		$TimeOut.start()

func _on_RSI_timeout():
	if autopause == true:
		get_tree().paused = true
#	ai_say("Time to take a break")
#	new_face = "1f64b"
#	face_change(new_face)
	$"../Alerts".visible = !$"../Alerts".visible
	$"../Alerts/Label".text = "Time for 1 min rest (or yoga) \n To deactivate this type [b]rsi[/b]"
	$"../Alerts/Alarm".play()
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


func _on_Rest_timeout():
	pass # Replace with function body.
