extends Node2D
var close = true
func alert(text):
	visible = true
	$Label.text = text
	$Alarm.play()
