extends AudioStreamPlayer

var ambience = [
	"res://addons/SFX/Berimb18 - Kitdepontos.Com.Br.ogg",
	"res://addons/SFX/Berimb19 - Kitdepontos.Com.Br.ogg",
	"res://addons/SFX/wind-sound-effect-free.ogg",
	"res://addons/SFX/wind-sound-effect-free.ogg",
]

func _on_AudioStreamPlayer_finished():
	var sfx = ambience.size()
	if sfx >= 1:
		var stream = load(ambience[0])
		set_stream(stream)
		play()
		ambience.pop_front()
		if sfx == 1:
			volume_db = 0
			get_parent().gameover()
#		if sfx > 0:
#			get_parent().get_node("BadTimer").wait_time = 0.3 * sfx
#			get_parent().get_node("Timer").wait_time = 5.2-(0.2 * sfx)
#		else:
#			get_parent().get_node("BadTimer").wait_time = 4
			
	else:
#		get_tree().reload_current_scene()
		pass
