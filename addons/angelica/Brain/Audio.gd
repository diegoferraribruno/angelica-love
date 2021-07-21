extends Node
onready var alarm = $"../Memory/AudioStreamPlayer"

func volume_change()-> void:
		var bus_idx = AudioServer.get_bus_index("Master")
		var volume = AudioServer.get_bus_volume_db(bus_idx)
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), volume -10)
		if volume <= -30:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 0)
		alarm.play()
#func sound_change():
#	sound[0][0] = !sound[0][0]
#	user[6][10] = sound
#	if sound[0][0] == false:
#		ai_say("Sound alerts are set to Off")
#	else:
#		ai_say("Sound alerts are set to On")
