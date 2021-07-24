extends Node2D
var cdtimer = 0
#onready var auratimer = get_node("../../Mini/Timer")
onready var angelica = get_node("../../")

func count_down(command):
	cdtimer = float(command[1])*60
	$Timer.wait_time = cdtimer
	$Timer.start()
	$TimerB.start()
	angelica.ai_say("your timer is set! I will alert you when it is over")
#	auratimer.start()

func _on_AngelicaTimer2_timeout():
	if cdtimer > 0:
		cdtimer -= 1
		var hour: = int(cdtimer/60/60)
		var minutes = cdtimer/60
		minutes = int(fmod(minutes,60))
		var seconds := fmod(cdtimer, 60)
		$Clock.text = "%02d:%02d:%02d" % [hour, minutes, seconds]
	else:
		$TimerB.stop()
		$Clock.text = ""

func _on_Timer_timeout():
	
#	angelica.change_state("state_old")
	angelica.ai_say("Atention! Timer Expired")
	angelica.face_change("res://img/avatar/1f64b.png")
	angelica.alert("Atention! Timer Expired")
#	angelica.change_state("state_old")
	
func _on_TimerB_timeout():
	if cdtimer > 0:
		cdtimer -= 1
		var hour: = int(cdtimer/60/60)
		var minutes = cdtimer/60
		minutes = int(fmod(minutes,60))
		var seconds := fmod(cdtimer, 60)
		$Clock.text = "%02d:%02d:%02d" % [hour, minutes, seconds]
	else:
		$TimerB.stop()
		$Clock.text = "end"
